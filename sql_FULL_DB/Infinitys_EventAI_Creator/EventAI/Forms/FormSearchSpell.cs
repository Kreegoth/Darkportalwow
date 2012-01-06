﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace EventAI
{
    public partial class FormSearchSpell : Form
    {
        public FormSearchSpell(uint value)
        {
            InitializeComponent();
            // load items to control's
            _cbSpellFamily.SetEnumValues<SpellFamilyNames>("SpellFamilyName", "", true);
            _cbSpellAura.SetEnumValues<AuraType>("Aura", "", true);
            _cbSpellEffect.SetEnumValues<SpellEffects>("Effect", "", true);
            _cbTarget1.SetEnumValues<Targets>("Target A", "", true);
            _cbTarget2.SetEnumValues<Targets>("Target B", "", true);

            SearchSpell(value);
            
            if(DBC.Spell.ContainsKey(value))
                new SpellInfo(_rtbSpellInfo, DBC.Spell[value]);
        }

        private List<SpellEntry> _spellList = new List<SpellEntry>();

        public SpellEntry Spell { get; set; }

        private void IdName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                SearchSpell(0);
            }
        }

        private void SearchSpell(uint spellId)
        {
            _spellList.Clear();

            string name = _tbIdName.Text;
            uint id = spellId > 0 ? spellId : name.ToUInt32();
            uint ic = _tbIcon.Text.ToUInt32();
            uint at = _tbAttribute.Text.ToUInt32();

            _spellList = (from spell in DBC.Spell.Values
                          where ((id == 0 || spell.ID == id)

                              && (ic == 0 || spell.SpellIconID == ic)

                              && (at == 0 || (spell.Attributes    & at) != 0
                                          || (spell.AttributesEx  & at) != 0
                                          || (spell.AttributesEx2 & at) != 0
                                          || (spell.AttributesEx3 & at) != 0
                                          || (spell.AttributesEx4 & at) != 0
                                          || (spell.AttributesEx5 & at) != 0
                                          || (spell.AttributesEx6 & at) != 0
                                          || (spell.AttributesExG & at) != 0))

                              && ((id != 0 || ic != 0 && at != 0) || spell.SpellName.ContainText(name))

                          select spell).ToList();

            _lvSpellList.VirtualListSize = _spellList.Count;
            _lvSpellList.Refresh();

            groupBox2.Text = "Spell Filter " + "count: " + _spellList.Count;

            if (_lvSpellList.SelectedIndices.Count > 0)
                _lvSpellList.Items[_lvSpellList.SelectedIndices[0]].Selected = false;
        }

        private void SpellFamily_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (((ComboBox)sender).SelectedIndex != 0)
            {
                _spellList.Clear();

                var bFamilyNames = _cbSpellFamily.SelectedIndex != 0;
                var fFamilyNames = _cbSpellFamily.SelectedValue.ToInt32();

                var bSpellAura = _cbSpellAura.SelectedIndex != 0;
                var fSpellAura = _cbSpellAura.SelectedValue.ToInt32();

                var bSpellEffect = _cbSpellEffect.SelectedIndex != 0;
                var fSpellEffect = _cbSpellEffect.SelectedValue.ToInt32();

                var bTarget1 = _cbTarget1.SelectedIndex != 0;
                var fTarget1 = _cbTarget1.SelectedValue.ToInt32();

                var bTarget2 = _cbTarget2.SelectedIndex != 0;
                var fTarget2 = _cbTarget2.SelectedValue.ToInt32();

                _spellList = (from spell in DBC.Spell.Values
                            where (!bFamilyNames || spell.SpellFamilyName          == fFamilyNames)

                               && (!bSpellAura   || spell.EffectApplyAuraName[0]   == fSpellAura
                                                 || spell.EffectApplyAuraName[1]   == fSpellAura
                                                 || spell.EffectApplyAuraName[2]   == fSpellAura)

                               && (!bSpellEffect || spell.Effect[0]                == fSpellEffect
                                                 || spell.Effect[1]                == fSpellEffect
                                                 || spell.Effect[2]                == fSpellEffect)

                               && (!bTarget1     || spell.EffectImplicitTargetA[0] == fTarget1
                                                 || spell.EffectImplicitTargetA[1] == fTarget1
                                                 || spell.EffectImplicitTargetA[2] == fTarget1)

                               && (!bTarget2     || spell.EffectImplicitTargetB[0] == fTarget2
                                                 || spell.EffectImplicitTargetB[1] == fTarget2
                                                 || spell.EffectImplicitTargetB[2] == fTarget2)
                            select spell).ToList();

                _lvSpellList.VirtualListSize = _spellList.Count;
                _lvSpellList.Refresh();
                groupBox2.Text = "Spell Filter " + "count: " + _spellList.Count;
                if (_lvSpellList.SelectedIndices.Count > 0)
                    _lvSpellList.Items[_lvSpellList.SelectedIndices[0]].Selected = false;

            }
        }

        private void SpellList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (_lvSpellList.SelectedIndices.Count > 0)
                new SpellInfo(_rtbSpellInfo, _spellList[_lvSpellList.SelectedIndices[0]]);
        }

        private void Ok_Click(object sender, EventArgs e)
        {
            if (_lvSpellList.SelectedIndices.Count > 0)
            {
                Spell = _spellList[_lvSpellList.SelectedIndices[0]];
                this.DialogResult = DialogResult.OK;
            }
            this.Close();
        }

        private void TextBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!((Char.IsDigit(e.KeyChar) || e.KeyChar == (char)Keys.Back)))
                e.Handled = true;
        }

        private void Cencel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void SpellList_RetrieveVirtualItem(object sender, RetrieveVirtualItemEventArgs e)
        {
            e.Item = new ListViewItem(new[] { _spellList[e.ItemIndex].ID.ToString(), _spellList[e.ItemIndex].SpellNameRank });
        }
    }
}

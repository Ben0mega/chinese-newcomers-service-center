class AddShortenedColumnsToItem < ActiveRecord::Migration
  def change
    add_column :items, :income_issues_wages, :string
    add_column :items, :income_issues_interest_dividends_schedule_b, :string
    add_column :items, :income_issues_business_income_schedule_c, :string
    add_column :items, :income_issues_capital_gain_loss_schedule_d, :string
    add_column :items, :income_issues_ira_pension, :string
    add_column :items, :income_issues_social_security_benefits, :string
    add_column :items, :income_issues_alimony, :string
    add_column :items, :income_issues_rental_royalty_partnership_s_corp, :string
    add_column :items, :income_issues_farming_income_schedule_f, :string
    add_column :items, :income_issues_unemployment, :string
    add_column :items, :income_issues_gambling_winnings, :string
    add_column :items, :income_issues_cancellation_of_debt, :string
    add_column :items, :income_issues_settlement_proceeds, :string
    add_column :items, :income_issues_other_income_issues, :string
    add_column :items, :deduction_issues_alimony, :string
    add_column :items, :deduction_issues_education_expenses_including_st, :string
    add_column :items, :deduction_issues_moving_expenses, :string
    add_column :items, :deduction_issues_ira_deduction, :string
    add_column :items, :deduction_issues_medical_and_dental_expenses, :string
    add_column :items, :deduction_issues_state_and_local_taxes, :string
    add_column :items, :deduction_issues_home_mortgage_interest, :string
    add_column :items, :deduction_issues_other_interest_expenses, :string
    add_column :items, :deduction_issues_charitable_contributions, :string
    add_column :items, :deduction_issues_casualty_and_theft_losses, :string
    add_column :items, :deduction_issues_unreimbursed_employee_business, :string
    add_column :items, :deduction_issues_other_itemized_deductions, :string
    add_column :items, :deduction_issues_business_expenses_schedule_c, :string
    add_column :items, :credit_issues_child_and_dependent_care_credit, :string
    add_column :items, :credit_issues_education_credits, :string
    add_column :items, :credit_issues_child_tax_credit_additional_child, :string
    add_column :items, :credit_issues_earned_income_tax_credit, :string
    add_column :items, :credit_issues_first_time_homebuyer_credit, :string
    add_column :items, :credit_issues_premium_tax_credit, :string
    add_column :items, :credit_issues_other_credits, :string
    add_column :items, :status_issues_ssn_tin, :string
    add_column :items, :status_issues_itin, :string
    add_column :items, :status_issues_filing_status, :string
    add_column :items, :status_issues_personal_dependency_exemptions, :string
    add_column :items, :status_issues_injured_spouse, :string
    add_column :items, :status_issues_innocent_spouse, :string
    add_column :items, :status_issues_employment_related_identity_theft, :string
    add_column :items, :status_issues_refund_related_identity_theft, :string
    add_column :items, :status_issues_nonfiler, :string
    add_column :items, :status_issues_worker_classification, :string
    add_column :items, :tax_issues_self_employment_tax, :string
    add_column :items, :tax_issues_suspected_return_preparer_fraud, :string
    add_column :items, :tax_issues_estimated_tax_payments, :string
    add_column :items, :tax_issues_withholdings, :string
    add_column :items, :tax_issues_refund, :string
    add_column :items, :tax_issues_assessment_statute_of_limitations, :string
    add_column :items, :tax_issues_collection_statute_of_limitations, :string
    add_column :items, :tax_issues_refund_statute_of_limitations, :string
    add_column :items, :penalty_issues_trust_fund_recovery_penalty, :string
    add_column :items, :penalty_issues_other_civil_penalties, :string
    add_column :items, :penalty_issues_additional_tax_on_distributions_f, :string
    add_column :items, :penalty_issues_individual_shared_responsibility, :string
    add_column :items, :collection_issues_payments, :string
    add_column :items, :collection_issues_installment_payment_agreement, :string
    add_column :items, :collection_issues_offer_in_compromise_oic, :string
    add_column :items, :collection_issues_currently_not_collectible_cnc, :string
    add_column :items, :collection_issues_liens, :string
    add_column :items, :collection_issues_levies_including_federal_payme, :string
    add_column :items, :inventory_beginning_case_inventory, :string
    add_column :items, :inventory_new_cases_opened_during_the_reporting, :string
    add_column :items, :inventory_total_number_of_cases_worked_during_th, :string
    add_column :items, :inventory_cases_closed_during_the_reporting_peri, :string
    add_column :items, :inventory_ending_case_inventory, :string
    add_column :items, :accounts_return_processing, :string
    add_column :items, :accounts_penalty_abatement, :string
    add_column :items, :accounts_injured_spouse, :string
    add_column :items, :accounts_backup_withholding, :string
    add_column :items, :exams_correspondence_exam, :string
    add_column :items, :exams_office_or_field_exam, :string
    add_column :items, :exams_automated_underreporter, :string
    add_column :items, :exams_automated_substitute_for_return, :string
    add_column :items, :exams_audit_reconsideration, :string
    add_column :items, :collection_automated_collection_system, :string
    add_column :items, :collection_field_collection, :string
    add_column :items, :collection_offer_in_compromise, :string
    add_column :items, :collection_lien_unit, :string
    add_column :items, :collection_bankruptcy, :string
    add_column :items, :appeals_exam_appeals, :string
    add_column :items, :appeals_collection_due_process, :string
    add_column :items, :appeals_collection_appeals_process, :string
    add_column :items, :appeals_oic_appeals, :string
    add_column :items, :appeals_penalty_abatement_appeals, :string
    add_column :items, :appeals_other_appeals, :string
    add_column :items, :litigation_us_tax_court, :string
    add_column :items, :litigation_other_federal_courts, :string
    add_column :items, :miscellaneous_identity_protection_specialized_un, :string
    add_column :items, :miscellaneous_innocent_spouse_unit, :string
    add_column :items, :miscellaneous_ss_8_unit, :string
    add_column :items, :miscellaneous_itin_unit, :string
    add_column :items, :miscellaneous_trust_fund_recovery_penalty, :string
    add_column :items, :total, :string
    add_column :items, :additional_the_amount_in_controversy_exceeds_500, :string
    add_column :items, :additional_the_taxpayers_income_exceeds_250_of, :string
    add_column :items, :additional_matters_worked_in_more_than_on_irs_fu, :string
    add_column :items, :additional_more_than_one_tax_year, :string
    add_column :items, :additional_representation_of_esl_taxpayers, :string
    add_column :items, :additional_joint_representation_of_taxpayers, :string
    add_column :items, :additional_representation_by_volunteers, :string
    add_column :items, :additional_state_tax_matters, :string
    add_column :items, :tax_court_does_the_clinic_participate_in_the_us, :string
    add_column :items, :tax_court_list_the_places_of_trial_location_serv, :string
    add_column :items, :tax_court_appearances, :string
    add_column :items, :tax_court_no_appearances, :string
    add_column :items, :tax_court_number_of_informal_consultations_in_th, :string
    add_column :items, :closed_case_a_number_of_cases_in_which_the_taxpa, :string
    add_column :items, :closed_case_b_number_of_cases_in_which_the_taxpa, :string
    add_column :items, :closed_case_c_total_amount_of_dollars_refunded_i, :string
    add_column :items, :closed_case_d_total_decrease_in_corrected_tax_li, :string
  end
end

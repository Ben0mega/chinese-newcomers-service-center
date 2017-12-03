class Item < ActiveRecord::Base
  # Mounts paperclip file
  has_attached_file :document1
  has_attached_file :document2
  has_attached_file :document3
  has_attached_file :document4
  has_attached_file :document5
  validates_attachment :document1, content_type: {content_type: %w[image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document]}, size: {in: 0..10000.kilobytes}
  validates_attachment :document2, content_type: {content_type: %w[image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document]}, size: {in: 0..10000.kilobytes}
  validates_attachment :document3, content_type: {content_type: %w[image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document]}, size: {in: 0..10000.kilobytes}
  validates_attachment :document4, content_type: {content_type: %w[image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document]}, size: {in: 0..10000.kilobytes}
  validates_attachment :document5, content_type: {content_type: %w[image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document]}, size: {in: 0..10000.kilobytes}


  def self.metrics
    metrics = {}
    Item.all_fields.each do |field|
      field_count = Item.where(field => 1).length
      metrics[field] = field_count
    end
    metrics
  end

  def self.issue_types
    %w[Income Deduction Credit Status Tax Penalty Collection]
  end

  def self.b_fields
    %i[B_1 B_2 B_3 B_4 B_5 B_6 B_7 B_8 B_9 B_10
       B_11 B_12 B_13 B_14 B_15 B_16 B_17 B_18 B_19
       B_20 B_21 B_22 B_23 B_24 B_25 B_26 B_27 B_28
       B_29 B_30 B_31 B_32 B_33 B_34 B_35 B_36 B_37
       B_38 B_39 B_40 B_41 B_42 B_43 B_44 B_45 B_46
       B_47 B_48 B_49 B_50 B_51 B_52 B_53 B_54 B_55
       B_56 B_57 B_58 B_59 B_60 B_61 B_62 B_total]
  end

  def self.k_fields
    %i[K_1A K_1B K_1C K_1D K_1E K_2A K_2B K_2C K_2D
       K_2E K_2F K_2G K_2H K_2I K_2J K_2K K_2L K_2M
       K_2N K_2O K_2P K_2Q K_2R K_2S K_2T K_2U K_2V
       K_2W K_2X K_2Y K_2Z K_2AA K_total K_3 K_4 K_5
       K_6 K_7 K_8 K_9 K_10 K_12 K_13 K_14 K_15A
       K_15B K_15C K_15D]
  end

  def self.all_fields
    self.b_fields + self.k_fields
  end

  # self.all_fields.each do |field|
  #     attr_accessor field
  # end

  def self.income_issues
    ['1. Wages',
     '2. Interest / Dividends (Schedule B)',
     '3. Business Income (Schedule C)',
     '4. Capital Gain or Loss (Schedule D)',
     '5. IRA / Pension',
     '6. Social Security Benefits',
     '7. Alimony',
     '8. Rental, Royalty, Partnership, S Corp (Schedule E)',
     '9. Farming Income (Schedule F)',
     '10. Unemployment',
     '11. Gambling Winnings',
     '12. Cancellation of Debt',
     '13. Settlement Proceeds',
     '14. Other']
  end

  def self.deduction_issues
    ['15. Alimony',
     '16. Education Expenses (Including student loan interest)',
     '17. Moving Expenses',
     '18. IRA Deduction',
     '19. Medical and Dental Expenses',
     '20. State and Local Taxes',
     '21. Home Mortgage Interest',
     '22. Other Interest Expenses',
     '23. Charitable Contributions',
     '24. Casualty and Theft Losses',
     '25. Unreimbursed Employee Business Expenses',
     '26. Other Itemized Deductions',
     '27. Business Expenses (Schedule C)']
  end

  def self.credit_issues
    ['28. Child and Dependent Care Credit',
     '29. Education Credits',
     '30. Child Tax Credit / Additional Child Tax Credit',
     '31. Earned Income Tax Credit',
     '32. First-Time Homebuyer Credit',
     '33. Premium Tax Credit',
     '34. Other Credits']
  end

  def self.status_issues
    ['35. SSN / TIN',
     '36. ITIN',
     '37. Filing Status',
     '38. Personal / Dependency Exemptions',
     '39. Injured Spouse',
     '40. Innocent Spouse',
     '41. Employment-Related Identity Theft',
     '42. Refund-Related Identity Theft',
     '43. Nonfiler',
     '44. Worker Classification']
  end

  def self.tax_refund_return_statue_limitations_issues
    ['45. Self-Employment Tax',
     '46. Suspected Return Preparer Fraud',
     '47. Estimated Tax Payments',
     '48. Withholdings',
     '49. Refund',
     '50. Assessment Statute of Limitations',
     '51. Collection Statute of Limitations',
     '52. Refund Statute of Limitations']
  end

  def self.penalty_addition_tax_issues
    ['53. Trust Fund Recovery Penalty',
     '54. Other Civil Penalties',
     '55. Additional Tax on Distributions from Qualified Retirement Plans',
     '56. Individual Shared Responsibility Payment']
  end

  def self.collection_issues
    ['57. Payments',
     '58. Installment Payment Agreement (IPA)',
     '59. Offer In Compromise (OIC)',
     '60. Currently Not Collectible (CNC)',
     '61. Liens',
     '62. Levies (Including Federal Payment Levy Program)']
  end

  def self.b_headings
    (self.income_issues + self.deduction_issues + self.credit_issues +
        self.status_issues + self.tax_refund_return_statue_limitations_issues + self.penalty_addition_tax_issues +
        self.collection_issues + ['Total Case Issues Worked (add lines 1 through 62)'])
  end

  def self.b_headings_names_and_fields
    [['Income Issues', self.income_issues,
      %i[B_1 B_2 B_3 B_4 B_5 B_6 B_7 B_8 B_9 B_10
         B_11 B_12 B_13 B_14], 'check_box_tag'],
     ['Deduction Issues', self.deduction_issues,
      %i[B_15 B_16 B_17 B_18 B_19 B_20 B_21 B_22
         B_23 B_24 B_25 B_26 B_27], 'check_box_tag'],
     ['Credit Issues', self.credit_issues,
      %i[B_28 B_29 B_30 B_31 B_32 B_33 B_34], 'check_box_tag'],
     ['Status Issues', self.status_issues,
      %i[B_35 B_36 B_37 B_38 B_39 B_40 B_41 B_42
         B_43 B_44], 'check_box_tag'],
     ['Tax Issues', self.tax_refund_return_statue_limitations_issues,
      %i[B_45 B_46 B_47 B_48 B_49 B_50 B_51 B_52], 'check_box_tag'],
     ['Penalty Issues', self.penalty_addition_tax_issues,
      %i[B_53 B_54 B_55 B_56], 'check_box_tag'],
     ['Collection Issues', self.collection_issues,
      %i[B_57 B_58 B_59 B_60 B_61 B_62], 'check_box_tag'],
     ['Total', ['Total Case Issues Worked (add lines 1 through 62)'],
      [:B_total], 'text_field']]
  end

  def self.k_headings_names_and_fields
    [['Case Inventory', self.k_case_inventory,
      %i[K_1A K_1B K_1C K_1D K_1E], 'check_box_tag'],
     ['Accounts Management', self.k_accounts_management,
      %i[K_2A K_2B K_2C K_2D], 'check_box_tag'],
     ['Exams', self.k_exams,
      %i[K_2E K_2F K_2G K_2H K_2I], 'check_box_tag'],
     ['Collection', self.k_collection,
      %i[K_2J K_2K K_2L K_2M K_2N], 'check_box_tag'],
     ['Appeals', self.k_appeals,
      %i[K_2O K_2P K_2Q K_2R K_2S K_2T], 'check_box_tag'],
     ['Litigation', self.k_litigation,
      %i[K_2U K_2V], 'check_box_tag'],
     ['Miscellaneous', self.k_miscellaneous,
      %i[K_2W K_2X K_2Y K_2Z K_2AA], 'check_box_tag'],
     ['Total', self.k_total,
      [:K_total], 'check_box_tag'],
     ['Additional Case Information', self.k_additional_case_information,
      %i[K_3 K_4 K_5 K_6 K_7 K_8 K_9 K_10], 'check_box_tag'],
     ['Tax Court Activities', self.k_tax_court_activities,
      %i[K_12 K_13 K_14], 'check_box_tag'],
     ['Closed Case Outcomes', self.k_closed_case_outcomes,
      %i[K_15A K_15B K_15C K_15D], 'check_box_tag']]
  end


  def self.k_case_inventory
    ['1A. Beginning case inventory(the number of cases that were worked in the previous year that remained open as of the first day of the reporting period)',
     '1B. New cases opened during the reporting period',
     '1C. Total number of cases worked during the reporting period (add lines 1A and 1B)',
     '1D. Cases closed during the reporting period',
     '1E. Ending case inventory (the number of cases that remained open as of the last day of the reporting period (subtract line 1D from line 1C))']
  end

  def self.k_accounts_management
    ['2A. Return Processing',
     '2B. Penalty Abatement',
     '2C. Injured Spouse',
     '2D. Backup Withholding']
  end

  def self.k_exams
    ['2E. Correspondence Exam',
     '2F. Office or Field Exam',
     '2G. Automated Underreporter (AUR)',
     '2H. Automated Substitute-for-Return (ASFR)',
     '2I. Audit Reconsideration']
  end

  def self.k_collection
    ['2J. Automated Collection System (ACS)',
     '2K. Field Collection (RO)',
     '2L. Offer-In-Compromise (OIC)',
     '2M. Lien Unit',
     '2N. Bankruptcy']
  end

  def self.k_appeals
    ['2O. Exam Appeals',
     '2P. Collection Due Process (CDP)',
     '2Q. Collection Appeals Process (CAP)',
     '2R. OIC Appeals',
     '2S. Penalty Abatement Appeals',
     '2T. Other Appeals']
  end

  def self.k_litigation
    ['2U. U.S. Tax Court',
     '2V. Other Federal Courts']
  end

  def self.k_miscellaneous
    ['2W. Identity Protection Specialized Unit (IPSU)',
     '2X. Innocent Spouse Unit',
     '2Y. SS-8 Unit',
     '2Z. ITIN Unit',
     '2AA. Trust Fund Recovery Penalty']
  end

  def self.k_total
    ['TOTAL (add items 2A through 2AA) (Must equal value in line 1C)']
  end

  def self.k_additional_case_information
    ['3. The amount in controversy exceeds $50,000 per tax period. (for cases reported on line 3, include an explanation for each in the Program Narrative, Item 2.vii)',
     "4. The taxpayer's income exceeds 250% of the federal poverty guidelines",
     '5. Matters worked in more than on IRS function or U.S. court',
     '6. More than one tax year',
     '7. Representation of ESL taxpayers',
     '8. Joint representation of taxpayers',
     '9. Representation by volunteers',
     '10. State tax matters']
  end

  def self.k_tax_court_activities
    ['12. Number of U.S. Tax Court cases worked during the reporting period in which an appearance was entered pursuant to Tax Court Rule 24',
     '13. Number of U.S. Tax Court cases worked during the reporting period in which the clinic represented the taxpayer, but no appearance was entered',
     '14. Number of informal consultations in the U.S. Tax Court during the reporting period in which the clinic provided advice to a taxpayer, but not representation']
  end

  def self.k_closed_case_outcomes
    ['15A. Number of cases in which the taxpayer was brought into filing compliance',
     '15B. Number of cases in which the taxpayer was brought into collection compliance',
     '15C. Total amount of dollars refunded in cash to taxpayers',
     '15D. Total decrease in corrected tax liabilities, penalties, and interest (but not below zero for any taxpayer)']
  end

  def self.k_headings
    (self.k_inventory + self.k_accounts + self.k_exams +
        self.k_collection + self.k_appeals + self.k_litigation +
        self.k_miscellaneous + self.k_total + self.k_additional +
        self.k_tax_court + self.k_closed)
  end


  # remove this after refactor
  def self.issues_and_types
    [['Income', self.income_issues], ['Deduction', self.deduction_issues], ['Credit', self.credit_issues],
     ['Status', self.status_issues], ['Tax', self.tax_refund_return_statue_limitations_issues], ['Penalty', self.penalty_addition_tax_issues],
     ['Collection', self.collection_issues]]
  end
end

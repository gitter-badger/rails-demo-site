class CreateLoanapps < ActiveRecord::Migration
  def change
    create_table :loanapps do |t|
      t.string :jméno
      t.string :příjmení
      t.string :telefon
      t.string :email
      t.string :zdroj_příjmu
      t.string :průměrná_výše_měsíčního_příjmu
      t.string :povinné_měsíční_výdaje
      t.string :výše_půjčky
      t.string :doba_splácení
      t.string :císlo_účtu

      t.timestamps
    end
  end
end

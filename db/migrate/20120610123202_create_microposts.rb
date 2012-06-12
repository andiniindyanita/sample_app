class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id
      t.string :mr_no
      t.date :date
      t.date :dob
      t.string :gender
      t.string :address
      t.string :phone
      t.string :email
      t.string :occupation
      t.string :marital_status
      t.string :education
      t.string :nationality
      t.string :med_cond
      t.string :jenis_pasien
      t.integer :FTND
      t.integer :HONC
      t.string :qd_decision
      t.string :pengobatan

      t.timestamps
    end
    add_index :microposts, [:user_id, :created_at]
  end
end

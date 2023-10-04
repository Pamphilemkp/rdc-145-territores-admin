class ChangeColumnTypeInParticipants < ActiveRecord::Migration[7.0]
  def up
    # Add new columns
    add_column :participants, :new_sector_of_investment, :jsonb, default: {}
    add_column :participants, :new_province_of_interest, :jsonb, default: []

    # Convert existing data to JSON format
    Participant.all.each do |participant|
      sector_of_investment = { value: participant.sector_of_investment, label: participant.sector_of_investment }
      province_of_interest = [{ value: participant.province_of_interest, label: participant.province_of_interest }]

      participant.update(
        new_sector_of_investment: sector_of_investment,
        new_province_of_interest: province_of_interest
      )
    end

    # Remove old columns
    remove_column :participants, :sector_of_investment
    remove_column :participants, :province_of_interest

    # Rename new columns to original names
    rename_column :participants, :new_sector_of_investment, :sector_of_investment
    rename_column :participants, :new_province_of_interest, :province_of_interest
  end

  def down
    # This is the inverse migration in case you need to rollback
    # It's recommended to create a separate migration to rollback
  end
end

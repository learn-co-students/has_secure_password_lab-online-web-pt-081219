class PasswordValidator < ActiveModel::Validator
    def validate(record)
        if record.password_confirmation && (record.password != record.password_confirmation)
            record.errors[:name] << "No!"
        end
    end
end

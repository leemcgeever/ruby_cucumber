class ContactForm < Page

  def completeContactForm(table)
    enter_contact_name(table)
    enter_email(table)
    enter_phone(table)
    enter_company_name(table)
    select_service_from_list
    enter_message(table)
    verify_signup_checkbox
    verify_captcha_present
  end

  def enter_contact_name(table)
    contactname = findElementBy("id", "edit-submitted-column1-name")
    @driver.execute_script("arguments[0].scrollIntoView(true);", contactname)

    contactNameData = table["contactname"]
    contactname.send_keys(contactNameData)
  end

  def enter_email(table)
    email = findElementBy("id", "edit-submitted-column1-email")
    emailData = table["email"]
    email.send_keys(emailData)

  end

  def enter_phone(table)
    phone = findElementBy("id", "edit-submitted-column1-phone")
    phoneData = table["phone"]
    phone.send_keys(phoneData)
  end

  def enter_company_name(table)
    company_name = findElementBy("id", "edit-submitted-column1-company-name")
    companyNameData = table["company_name"]
    company_name.send_keys(companyNameData)
  end

  # The method selects the first option from the select list
  # it's item 2 on list as the first one is "Select Service" hardcoded message
  # this should be a watermark not a list option!!
  def select_service_from_list
    findElementBy("id", "contactServiceMenu").click
    findElementBy("css", ".mdl-menu > li:nth-of-type(2)").click
  end

  def enter_message(table)
    message = findElementBy("id", "edit-submitted-column3-message")
    messageData = table["message"]
    message.send_keys(messageData)
  end

  def verify_signup_checkbox
    findElementBy("id", "edit-submitted-column3-sign-up-for-jellyfish-communications-1").click
  end

  def verify_captcha_present
    findElementBy("class", "g-recaptcha").displayed?
  end

  def verify_submit_button
    findElementBy("css", ".webform-submit").displayed?
  end

  def sidebarContactForm
    findElementBy("css", ".top-menu > li:nth-child(11) > a:nth-child(2)").click
  end
end

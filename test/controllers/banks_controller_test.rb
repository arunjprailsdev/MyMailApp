require 'test_helper'

class BanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank = banks(:one)
  end

  test "should get index" do
    get banks_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_url
    assert_response :success
  end

  test "should create bank" do
    assert_difference('Bank.count') do
      post banks_url, params: { bank: { AgeLimit: @bank.AgeLimit, ApplicationFees: @bank.ApplicationFees, ApplyLink: @bank.ApplyLink, BankName: @bank.BankName, CallLetter: @bank.CallLetter, CallLetterLink: @bank.CallLetterLink, DateofExam: @bank.DateofExam, Description: @bank.Description, HowtoApply: @bank.HowtoApply, LastDate: @bank.LastDate, LastDate: @bank.LastDate, LastDateOnlineApplication: @bank.LastDateOnlineApplication, OfficialNotification: @bank.OfficialNotification, PostDate: @bank.PostDate, PostName: @bank.PostName, Qualification: @bank.Qualification, Qualification_desc: @bank.Qualification_desc, SelectionProcess: @bank.SelectionProcess, TotalPost: @bank.TotalPost } }
    end

    assert_redirected_to bank_url(Bank.last)
  end

  test "should show bank" do
    get bank_url(@bank)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_url(@bank)
    assert_response :success
  end

  test "should update bank" do
    patch bank_url(@bank), params: { bank: { AgeLimit: @bank.AgeLimit, ApplicationFees: @bank.ApplicationFees, ApplyLink: @bank.ApplyLink, BankName: @bank.BankName, CallLetter: @bank.CallLetter, CallLetterLink: @bank.CallLetterLink, DateofExam: @bank.DateofExam, Description: @bank.Description, HowtoApply: @bank.HowtoApply, LastDate: @bank.LastDate, LastDate: @bank.LastDate, LastDateOnlineApplication: @bank.LastDateOnlineApplication, OfficialNotification: @bank.OfficialNotification, PostDate: @bank.PostDate, PostName: @bank.PostName, Qualification: @bank.Qualification, Qualification_desc: @bank.Qualification_desc, SelectionProcess: @bank.SelectionProcess, TotalPost: @bank.TotalPost } }
    assert_redirected_to bank_url(@bank)
  end

  test "should destroy bank" do
    assert_difference('Bank.count', -1) do
      delete bank_url(@bank)
    end

    assert_redirected_to banks_url
  end
end

class StaticController < ApplicationController

  def terms
    add_breadcrumb I18n.t("shared.footer.terms"), :terms
  end

  def faq
    add_breadcrumb I18n.t("shared.footer.faq"), :faq
    @user = User.new
  end

  def imprint
    add_breadcrumb I18n.t("shared.footer.imprint"), :imprint
  end

  def privacy
    add_breadcrumb I18n.t("shared.footer.privacy"), :privacy
  end

  def contact
    add_breadcrumb I18n.t("breadcrumb.static.support"), :contact
  end





end

module HomeHelper
  def add_link_to(url, txt, data=nil)
    content_tag :small do
      link_to url, data do
        "<i class='icon icon-plus'></i> ".html_safe + t(txt)
      end
    end
  end

  def add_link_to_modal(url, txt)
    add_link_to url, txt, data: {toggle: "modal"}
  end
end

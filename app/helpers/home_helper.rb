module HomeHelper
  def add_link_to(txt, data=nil)
    content_tag :small do
      link_to send("new_#{txt}_path"), data do
        "<i class='icon icon-plus'></i> ".html_safe + t(['.add',txt].join('_'))
      end
    end
  end

  def add_link_to_modal(url, txt)
    add_link_to url, txt, data: {toggle: "modal"}
  end
end

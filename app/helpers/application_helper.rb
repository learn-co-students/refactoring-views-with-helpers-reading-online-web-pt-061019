module ApplicationHelper
    def title(text)
        content_for :title, text
    end      
end


# content_for => helper within our custom helper
# What this will do is send our text to the place in our application layout that is expecting some content for the :title.
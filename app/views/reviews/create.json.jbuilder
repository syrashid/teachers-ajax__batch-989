# If Review Persists
if @review.persisted?
  # Insert the review above where we are
  json.inserted_item render(partial: 'teachers/review', formats: :html, locals: {review: @review})
  # Form should clear out
  json.form render(partial: 'reviews/form', formats: :html, locals: {teacher: @teacher, review: Review.new})
# Else
else
  # Display form with errors
  json.form render(partial: 'reviews/form', formats: :html, locals: {teacher: @teacher, review: @review})
end

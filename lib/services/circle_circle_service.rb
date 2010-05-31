
class CircleCircleService < FreightService

  def intersect?(circle_one, circle_two)
    if circle_one.center.distance_to(circle_two.center) > circle_two.radius
      return circle_one.center.distance_to(circle_two.center) <= circle_one.radius + circle_two.radius
    else
      return circle_one.radius + circle_one.center.distance_to(circle_two.center) >= circle_two.radius
    end
  end


end
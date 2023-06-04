class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

final products = [
  Item(
      "PROD001",
      "apple iphone 14",
      "The iPhone 14 features a 6.1-inch (155 mm) display with Super Retina XDR OLED technology at a resolution of 2532 × 1170 pixels and a pixel density of about 460 PPI with a refresh rate of 60 Hz.",
      70000,
      "blue",
      "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgVFhUYGRgZGhwaGhgYGBgYGBwaGBwZGhgZGBocIS4lHB4sIRgaJjgmKy8xNTU3GiQ7QDszPy40NTEBDAwMEA8QHxISHzQsIys0NDQxNjQ0NDE0NjQ0NDQ0NDQ0NDQxNDQ0NDQ0MTQ0NDQ0NDQ0ND80NDQ0NDQ0NDQxNP/AABEIANMA7gMBIgACEQEDEQH/xAAcAAABBAMBAAAAAAAAAAAAAAAABAUGBwECAwj/xABIEAACAQIDBAYFCAgDCAMAAAABAgADEQQSIQUGMUETUWFxgZEHIjKhsRQjQlJyssHRJDVidIKSs+E00vAVM0Nzk6LC8VODo//EABoBAQADAQEBAAAAAAAAAAAAAAACAwQBBQb/xAAnEQACAgIBBAEEAwEAAAAAAAAAAQIRAzEhBBIiQTIFE1FhgbHBkf/aAAwDAQACEQMRAD8AuaEIQAhCEAIQhACEIQAhCEAITlUrKvFgO8gTZHB1BB7jeAbwhCAEIQgEb3h3iTD06r5v92rMVW1yVHC54a6eMhOAwm1q6LiG2gaDOM60RTDKqtqobMeNrcQSIybyVC1CvmbVsgOuvrV6d/deWG9ewl0IJumZc+WUEqGVd5tq4X/EYaliUFyXw7ZXAHMo2pPcLRy2N6Udn17Bqhosfo1RlH84uvvnDE44WIPA6ecprae6VdGOQCogvYqRmtyuuhv3Xk8mBpWlZHB1Pfak0j09hcSlRQyOrqeDKQw8xO88i4TGYjCvem9Wi/7JZD4jS/jLX2DvVtdaKVfmcSrLmyt6lUXP1hYHrlKxyeka7LjhIluzvrTxT9BUpvh8RYkUqg9oDiabcGA89DJdINNcM6EIQgBCEIAQhCAEIQgBCEIAQhE2NxS0keoxAVFLEk2Fh1nlAOzMBqTaJam0aa/Sv9nX38PfK82fvxRxtZqYLggZlLKArAEXKC5ItcHUA215SSU6anU8uZMmooi5Mcq22T9FLdrG/uH5xBWx9RuLEdg9X4TnWtw6v/Y9x90TsZNRSK3Jsw7TK7S6EZiLjMADzF78D1ae+c2MQbUUshAF9Rzt18J1o4tk92dixVprUXg1/MEg+8GKow7mqRhUBBFmfQ/aMfpS9ly0ZhCE4dKY3pphcJUsANaXD/n0o/YvE2EY98D+iVe+l/XT8p3x1XSXwdSMXUK0hFjMb2xubH9sTY2trOFTEJYB6ZVgBqLjMNLkjTUi+v8AoehiZ57iODYlXGVlVx1MAw8jHzZW0woCgLlFrDKpFhwHd2SIUwjWyvZsouHsBmubhTfhoOXOKcDXN5vUYyRqwza4JptsB8OKlIZa1AdLTcEk56frDjwDAFSOBDSx9nYsVqVOqvs1EVx3OoYfGVjhKnzT3+o33TJ5uT+r8H+7Uf6azxutioyVHpp2rH2EITEAhCEAIQhACEIQAhCEAxIj6US3+za4S9yBe31Qbt7gZLo2beUGmAeBcfBoWzj0eedzaOfEKyDRFYs2vF1KKvf6xPcp6pb2Hx9N2NNayMyWzorqSDwGYDUaxg3iwa4XDV6tIBSFOXKoXKzkLmsNLjNe/YJXm6bZcRSZHOZukDKAfY6Mtcnv96y3RDZd1U6nuX7onBjNaVXML9w8gIMZYQNGM4V/ZPh+M7MYlx1QpTdhxVSwvwuoJF/KcYRL92P8Ove33jHeNW7otQH2m+8Y6yh7LlozCEJw6U3vioGEq663peHz1P8Av5zlj30nXfb/AAtXuo/1xEmNJOgl0fkZc2hkasFdWPAMCfz8OPhMYhbIrVSX9drEHUqy3B8SL2nPFZkfUFWUg6+Y7xNDi+GVFAuSw4gswte3KehjRgb5M0sIvR5mNmJU3+qpYLcjt1MWYbCgOApJFgQeHEXmtF1dGBWzWUXBOuXhYcFA46R8wmF1X7CfdE0qbii3DHukKcS2TDP1spUfxC3wufCWLuV+r8H+7Uf6ayqdrYrO5pL7NNWLfbIOngNPEy1tyv1fg/3aj/TWeHlzfcyv9cHvZun+1hxt7dv+h9hCEgZQhCEAIQhACEIQAhCEAxG3bg+bHYwPuMco3bb9gfaHwadWzj0RXGYalUSojAFaoOYX43ULfTnYDykM2ZuyuGc5FdmOmZiD6twcuiiwuATpc2Gok7ZB1TWwHAS6kVWzjQTKoB1PEntPGZYzLGaEyRwwxnGtYq2YXB0Ite4Nxa3ObkxFtPFCnTZzyK/Gcegtk43dFqC95+JjrKVxnpJq0wKOHVVCklnYZmJJvYA6AayxNxt4DjcP0jKAysUa2gJABuBy0MzOScqNX25KPcSaEa94tqfJsPUr2vkW4HWSQB4XIlYbK9K1Vav6QqtTJ1yLlZR1rr6wHUfOccknQjjclaM77j9Era63o6dQ6Zbd+uaJDY5hbMbAhfrZWBZQOZtc27Ii3h2v02Hri2lqRHhXX/NMYwzVj5kYs6dUI9pponqlfayqb3CXGXjrbN0lpuuABQEWv3/haFPDM7XNyTzJufMyR4DZ7FQvKbozUVyY1glJiXYmxS+vD+3GKNqYn5MuRbGq1wo+qOBc9nV1nxjlidophEyHV21CrxA626hoJDKdRqlVqj6ljz1sOQ7hPL676hScY7Pofpv062pS1/Z0wOHKh8172a9+N7G9+2XJuV+r8H+7UfuLKydBlcj6rfAyzdyf1fg/3aj9xZh6S2m3+jf9YfMF+n/g+whCbDxQhCEAIQhACEIQAhCEARbUxoo0nqngik26+qQXZG+4xuakyhHDXXLexUA3vfnrHn0kYvo8E45uQvhxPwHnKe3JqH5YPsOfICRTfciztX22/ZbZM5sYFpzYzSZDDGcyZljOZMkAJjVvJTLYdgPrL+McyYlx59Q361+Mi9COypsdSIrMvPTTnqBPQ242xThMHTpt7bXep9tuXgAq+Ege7G7Yr7Tesy/N0gjcNC4UZR56+Et6Zu2pNmuU7ikhHtXALiKL0X9l1KnrF+BHaDY+E80bwbLfDVXo1BZkJF+RHJh2EWPjPUcrz0r7s/KKPyhF+cpqQ1uJTiL92vnEo3yMcq4eiuMdhCmFqsRxFMf/AK047LQLmdd7EAwdS3XT/q05I9gbMzEEiaYeNlHZ3ys12RsS9iRHDaFZaK5UsW+txA7usx0xVQIuVfE9f9pFNo1bmZs+d1SPX6TpIvykuPwRvHgsxJJJJuSdSe8zOCoazriFuYu2dSniTtyPXg6YoFCyP9lvgZ39GO91RzRwr5ci01ppYWIKILXPO9otqUPm3+w3wMr7dKt0T0Kg5FT5WnoYPGP/AA87raySSf4Z6LhNVm02nihCEIAQhCAEIQgBCE51XCqWPBQSe4C8Aqr0s7VzEUlOice88f8AXZIJuT/i1+w3wE775Y0vUck6liT4mJtxj+lD/lv+EjH5WWz4hRbKNoO4TBM1XQAdk3wzgOhPDMvxE0mMc8Psx1DA5QXW173Kg+0LdZ4ceuMjixIuDYkXHA25iSurVvInVTKxW97Ei/dORdkpKjBMat4Md0NMNa921B4EDiPG5jmTI/veG6HMozWYAr2EHUduk5k7u3xJYXFS8iQbu75UKahVUWLeuCbOCbKCDazrwHK2nHUyebO2lTrrmpte3Ecx3ieX+mudND1cCJYHol2pV+WdGxJVqbZr9YsV+BlEW3svnFLRdkie8e+NLDq4ADkAqAT6rPb2e1dRc9ul+SvfnaL4fA1qqC7AKunIO6qT5NKDxOPZyzvcgnQd/VDdI5BJvkk+28T0uBZ+t6asOV+kpkW7LA+UsvAoKdO/C449nOU18vephqi5ctMGmR1s3TUgD3WJ85Ld+d5SjjDobZAM1uZOtvC8sgpSVMsg4qTfok2LxaNoHHnGXH0+fLr5Svxth78Y5YDb7DQm45g8J2XTRkuHyb8XWqPDXA51n1jpsk3MYce+Zekp6ge0vNe3tHwi7dzFhiJ5ubBKEqZ6DnGUe6L4ZMqqfNv9hvumVPs5vmaRHID8Jbr/AO6f7DfdMpTZtayqpPJCB/CJbBeJ5uSfn/DPRe7GO6bDU35hcp710+Fj4x3kA9F+OzI9MnqcfBv/AB8pP5pTtHmyVMzCEJ0iEIQgBCEIBiMu9mL6PDOeZGUePH3Ax6lbelHanqdGp0W9+82v5fnIydIlBWyotsVszk9sfPR3SzV3P1V49/8Ae0i1ZiTLB9HdELTrNzbobdw6bN/4xD5IsyfFkwJmrGYJmCZrMQqbaL9nDq49vfEZMwTNbziSQbbMkyP7X2kFqvSe+Sw4AH1hxPaNeF+UfiZEt88IbCrfS4U9YJvY92kqyqVJxLcDjbUv4I5tvZr9MHplGVgCuRtTawOhtY35Hr5yYbiYjo8TTzKVN7EEWJJHOQFs1wQTJ56LaQr4gCoTel6yftcbp+PnKk7L5Ki4Nr4MVqFSkRcOjLr12099p5t2xgajVBTpqzaGygcLcSeoDrM9C717eTBYdqzC5uFRfrO17DuABJ7AZRdbajVc+VQiuSSF0uOQJ5jifHuhs5BWO21qaLhCVtlJp2I4WFaleRHbuKNSvUc/Sdj5sTH7aNdRgXpBrtdX0+ioqUx4XJHlI3jk9Y98vxNuLbKslRlSEoedUrETiRNZ04pD/svaRVhrHnZxFOupX2H1XsP0l/LsMhSPYyU7ErZ1yHiCGU9TDh56jxnZx+7Cva0aMXUPG+dPZZ+IxITDVXJ0Wk7HwQmUfTJUKf2V+6JNt7t5VOFOHpm7OAHYcFUEEoDzJIsey8iGIpepS7UQ/wDaJk7HGPPsseRTnx6J36Odp5MQgvoTlPc2n438Jds8ybIqlKiG/MT0VsPGitRV+drHvHGdg/RXmj7HKEISZSEIQgBCEIBq3CUZvk7Ekk6kknvMvNuEorfJwXYd8rn6LsXsgbiSncjFEVQlzqrfhIwwjvua36Uo/Yf4CSh8kRnplpXmpM0Vri8LzWZDJM1vMEzF4BkmNe3ayBAjjR9b/ZNvx90cyYxb2KOiDkE5WA04jNfX3SvJfb4k8Xb3eRDsRhwle6myNa3AjgMw7JMtg4tcPUpOo1uNBzBIvIBWJb2TeWJ6IdnGs7tV1FEoyg82bNbwGS/faZ07NUlSJR6WMGKtGipNrOW8Qtgf+4jxlNbWrdECijh18z+UvvfrZxqUQ68aeYkfsEDMfCwPdeUNjgtdwoYC/FhqLdfaZ1kY6HvaOz1p4Stbj82CeetWkdYy7SoWcyRbSrCphqy5uAptc6DSqmgHbyiXbGF9YzTiaadGfLFpqyKuk5FY4VaMTskk0RTE2WOmyKuVwYhyxVhF1ER4ZyXKFm9VHK+cey65x38GHnr/ABREDmWn2Io8lEfN4aWfCK/NHt/C4sfeFkdwBJt2Ko9wlfVc0XdML6aWYH4S8PRvVvhyL3sR8JSa8ZbXosr+q6dgPkbfjMkXyap8xZYcIQlxmCEIQAhCEA44lrIx6lPwMobeR7u3fL12ibUqh/Yb4Gefdttd2PbK5l2LTI9X4mOO55/S1+w/wEa651jluef0tfsP+ElD5IhP4ss2idJtecqJ08Z0vNZlAmYvMEzF4BkmI9p0c9NltfUaecVEzVxdT3j8ZxhbKy2lhDTrsAbez7wJbPoqcA1VvrkQgczlLZif5h5yuts0S2LZevJ4eqsuLcbYa0afTEes6gDsUG/vOvgJm9s034oX77IzYHEqpsWpso/i0/GecRhWptmf1bcZ6g2nh+ko1EFrsjKL8LkED3zzvvVhGzEMpVwCGB0II6+2cZ2Blnc4ar6uVPmz2sempWJ9+nbJPtTC3JiXb1ELhKlh/wDF/WpR/wATTBvNONKPCKMjcnbINicJG98PJhWwytcrrG6tgeyWldkaajO+GpaxzbB9k74fB6zlCxXXw2fBV1I/4ZYd6euPeshmztEB7vgJZtGh8y466bjzUytsCvzQ8PgJnz+i7BtipGli+jXF2rBfrXHmCfiBKzpmTHcjE5ayE8nX4i8y+zXfDResIQl5mCEIQAhCEA4YunmRl61I8wRPP+3MMQ7X6+c9DSo9+tlhazkcCb+YvISRZjforHEpFW5x/Sx9h/gJti8P1Thu7UCYynfg10v2sCB77DxjG/I7kj4stGlwmxM1ELzYYzJM1vMEzF4BsTOeIqFUJFuI4+M2vNv9nvWWyjTMCT3A/n7pxhbE27O7/wApxjVWHqLlJtw0UC3eZbiqALDS0at2tm9BQVLesbsx7SSQPAEDwjvM72y+7SCQzf8A3W+VUzUpr86o1A4uvV2sOXl1SZwg6nRQm3at8PUBY6dHppyrUhJZiaeZWA5iJt591XK4lVFwytl886e8L5GabB2ouIpKQfXAAdPpKw0YEceIMui+SmS4Oi0SzM5FrhBbT6ChSdO6aVMIDHPIeqdfkL/sfzp/mlidENjAcCOqbJhUUqXQugN2QEgkWNuBHOxj58gf9n+dP805NSINrcPH3iLsVQiRMtJ9CBlewPECxsD4WlWbPf5sDsHwEsvePHrQw9RiRmZSiLzZ2FgAPG57AZVWCqgXXlfTu5e6Z82kX4d2LbSRbrH5xB+0PjykcSxMmW5tAdKjEaKQeHUbzOjUXpMzVTcTaXGYIQhACEIQDErbfWoGdz1G3lpb3SxK9UKpY8ACfKU9vVivaudSde86yEizGvZE8Z6xNtfwjZicCR63OP8AggvP6XxibFsOErbpl9WjbDb0V0WzKj2+kbhj32Nj5Tqu99U/8FP5mjJmAJnJn00k1kl+Sp4o/gkZ3tqc6SfzNM0t6ajGwoof4mjLhcGzmwF+yWtuNuKEtXxC68Vpn7zflOqcn7OPHBK2jfdvYVeunSVQtJSLoLFmPbYkWHbJXs3YIpWJdmtwFgq36yBx849Qlnc/yU0r4RmEITh0IQhAEeOwYqixLA8mU2I/AiQjbHovw9dmqFvnDrcApc/tFTbxteWFCLZyjzhtnd0YZyj0HBHPpWsRyI01EbhRpfUcf/a09G7Z2NSxSZKi3+qw9pT1g/hwlNb0bo1cMxuLofZcA5T39R7DIScl7LoqL9ckWKJyV/8ArNOTuo+i/wD13/Kd6tFliR2ke+RJwiccR6xNltpbMWZ2t1ZmOg7hOeHoGKKjzpRNpxybCikGGU31k13brgc5H0Rcg6z/AKM7bGxOVyPKES1wX5sLFdJRQ8wMp/h0+Fj4xxkO3Jx3GmTowzL9oe0PK38smMtWiiSpmYQhOkQhCcMTXCIzMdFF/wAoAzb044KmQHU+se4cB4ke6U3tvFZ3Mlu9G1S2ZidWPDq6h4CVzja2vbK27Zoiu1HX5TZbcOrviCpi82h0M4VK8RgEnSRoWL0JbS0dtl7MLt7JIiPZ2Fa4427x8Zafo82SGfOy+qmvWCx9kfj4CFEdySsft0t00oKtV1BqEAgEaJ4fW+El8IS1Kihtt2zMIQnTgQhCAEIQgBCEIATnUphgQQCDoQQCCOog8Z0hAIPt/wBH9GqC1H1H45SboezrX4dkqnbW770WKsrKRyYEeI6x2iejY17d2SuJpMjAXscrcw3Kx6jzkJR/BZGfpnmmtQK8Zx6S2pkr21s9kLLaxBIIOhBHESKYzDEcZBItf6FdHF6dvADqE6UKuVr9sZkqWiijVuZKjllo7tbRIysp9ZSCO/8Avw8ZbODxS1EV14EeR5g908+7v4sqwF9JaO6e2ArZGPqvw7G/IzsWRnG1ZOoQhJlJiQrezbILdGp9VeJ62/tHneTa4oJZT67DTsHNvylWbQxnGRk/RbCPtiDa2LzEyK4yprHLH15HsS9zIom2aM9zHHCYcRDhadzJDgMPe06RHPYezy7KqrdmIAHWTwEvPY2zloUlpjiNWPWx4n8O4CRP0fbDyj5Q46wgPkzfgPGTySSK5P0ZhCE6RCEIQAhCEAIQhACEIQAhCEAIQhAID6QtiXHyhRxstS3XwVvw8pVeKw3EET0ZXoq6lGF1YEEdhlM707FbD1GU6jirfWU8D38j2iRaLIu1RWuMw+UzjSexj5tLDxiqJYzhJj1gKtpL9mY3TjIDg6sf8DibTh1MvTdfbAr08pPrqNe0cjH6UxsLazUnV1Oo8iOoy3Nn4xa1MOvA+48wZJMrlGuSuN66rGs9z9K3gOUh2N4whIlvoYMdzjK3GEJ1EZDjgVks2OgzjSEIQL7o0woCqLAAAAcgJ1hCTKQhCEAIQhACEIQAhCEAIQhACEIQAhCEAJEt/wCkpw6sQLh7A8wCGv8AATMJx6Ox2U/tFBbhIrjBrCEiXHKhxjzhpmEM4h8wfKWVuFVb1xfTKDbthCcWzr0f/9k=")
];

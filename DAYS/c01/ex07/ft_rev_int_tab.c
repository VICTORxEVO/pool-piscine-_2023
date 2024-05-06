/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_rev_int_tab.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ysbai-jo <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/19 19:06:40 by ysbai-jo          #+#    #+#             */
/*   Updated: 2023/09/22 10:48:17 by ysbai-jo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	ft_rev_int_tab(int *tab, int size)
{
	int	left;
	int	right;
	int	temp;

	left = 0;
	right = size - 1;
	while (left < right)
	{
		temp = tab[left];
		tab[left] = tab[right];
		tab[right] = temp;
		left++;
		right--;
	}
}

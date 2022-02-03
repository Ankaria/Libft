/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: elerika <elerika@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/18 16:00:01 by elerika           #+#    #+#             */
/*   Updated: 2022/02/03 16:53:30 by elerika          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t count, size_t size)
{
	int		scale;
	char	*str;
	int		i;

	if (count == 0)
	{
		str = malloc (size);
		str[0] = '\0';
		return (str);
	}
	i = 0;
	scale = size * count;
	str = malloc(scale);
	if (str == NULL)
		return (NULL);
	while (i < scale)
	{
		str[i] = '\0';
		i++;
	}
	return (str);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: elerika <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/25 23:06:10 by elerika           #+#    #+#             */
/*   Updated: 2021/11/03 17:01:27 by elerika          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*newnode;
	t_list	*result;

	result = 0;
	if (lst == NULL)
		return (0);
	while (lst)
	{
		newnode = ft_lstnew(f(lst->content));
		if (newnode == NULL)
		{
			ft_lstclear(&result, del);
			return ((void *)(0));
		}
		ft_lstadd_back(&result, newnode);
		lst = lst->next;
	}
	newnode = NULL;
	return (result);
}

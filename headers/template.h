/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   template.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: JFikents <JFikents@student.42Heilbronn.de> +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/21 12:15:17 by JFikents          #+#    #+#             */
/*   Updated: 2023/11/21 12:19:40 by JFikents         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEMPLATE_H
# define TEMPLATE_H
# include "libft.h"

typedef struct s_linked_list_template
{
	void							*content;
	struct s_linked_list_template	*next;
}	t_linked_list_template;

#endif
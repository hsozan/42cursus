/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putchar.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hsozan <hsozan@student.42kocaeli.com.      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/16 08:37:41 by hsozan            #+#    #+#             */
/*   Updated: 2022/01/16 08:37:48 by hsozan           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** LIBRARY: <stdio.h>
** SYNOPSIS: output a character to stdout
**
** DESCRIPTION:
** 		The putchar() function writes the character c (converted to an
**	``unsigned char'') to the output stream of stdout.
** 		[42 PDF] Outputs the character ’c’ to stdout.
*/

#include "libft.h"

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

<template>
  <li class="cart__order">
    <h3>{{ item.product.title + ' (' + item.quantity + '*' + item.price + ' ₽)' }}</h3>
    <b>{{ (item.price * item.quantity) | numberFormat }} ₽</b>
    <span>Артикул: {{ item.product.id }}</span>
    <span class="size__code">
      Размер: {{ item.size.title }}
    </span>
  </li>
</template>

<script>
import numberFormat from '@/helpers/numberFormat';

export default {
  filters: { numberFormat },
  props: ['item'],
};
</script>

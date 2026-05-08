---
title: "{{ replace .File.ContentBaseName "-" " " | title }}"
date: {{ .Date }}
draft: false

# meta description (用于搜索引擎SEO和分享摘要)
description : "一句话概括产品：核心关键词 + 核心功能 + 主要应用场景"

# product Price (对于工业设备通常隐藏价格，通过询盘获取)
showPrice: false
price: "0.00"
priceBefore: "0.00"

# Product Short Description (显示在产品图片右侧的简短描述)
shortDescription: |
  [用一两句话抛出产品的核心卖点或解决的痛点]。主要特点如下：
  - **[核心亮点1]:** [半句话解释]
  - **[核心亮点2]:** [半句话解释]
  - **[核心亮点3]:** [半句话解释]

#product ID (必须是唯一的数字)
productID: ""

# type must be "products"
type: "products"

# product Images (产品图片路径)
images:
  - image: "images/products/{{ replace .File.ContentBaseName "-" " " | title }}/1.jpg"
---

[正文第一段：产品概述] 介绍这是什么产品，主要用来处理什么介质，以及它广泛应用于哪些具体行业。

[正文第二段：工作原理或结构设计] 用专业的工程语言描述它是如何工作的。提及其核心部件，以及它是如何实现物理传输或增压的。

### Features & Advantages

[一两句过渡句，例如：Our product is constructed with premium materials and precision engineering to deliver the following advantages:]

- **[特点1]:** 详细说明：使用了什么材料，为什么这种材料好，能带来什么价值。
- **[特点2]:** 详细说明：设计上如何做到易于维护，能帮客户节省多少成本。
- **[特点3]:** 详细说明：在长时间高负荷运行下，如何保持稳定。
- **[特点4]:** 详细说明：应用上的灵活性或定制化选项。

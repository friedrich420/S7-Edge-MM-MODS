.class Lcom/android/settings/DCMHomeSettings$HomeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DCMHomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DCMHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DCMHomeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DCMHomeSettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    .line 508
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 509
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 514
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mHasEasyLauncher:Z
    invoke-static {v5}, Lcom/android/settings/DCMHomeSettings;->access$500(Lcom/android/settings/DCMHomeSettings;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    :goto_0
    if-ge p1, v5, :cond_3

    .line 516
    const-string v5, "DCMHomeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Convertview is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f08005a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 519
    const v5, 0x7f0d06a6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 520
    .local v1, "icon":Landroid/widget/ImageView;
    const v5, 0x7f0d06a7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 521
    .local v3, "label":Landroid/widget/TextView;
    const v5, 0x7f0d06a8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 522
    .local v4, "summary":Landroid/widget/TextView;
    const v5, 0x7f0d06a9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 524
    .local v0, "button":Landroid/widget/RadioButton;
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 528
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 546
    :goto_1
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I
    invoke-static {v5}, Lcom/android/settings/DCMHomeSettings;->access$100(Lcom/android/settings/DCMHomeSettings;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 547
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 567
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v4    # "summary":Landroid/widget/TextView;
    :cond_1
    :goto_2
    return-object p2

    .line 514
    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    .line 530
    .restart local v0    # "button":Landroid/widget/RadioButton;
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v3    # "label":Landroid/widget/TextView;
    .restart local v4    # "summary":Landroid/widget/TextView;
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020107

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    const v5, 0x7f0e160c

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 532
    const v5, 0x7f0e160d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 535
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020108

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    const v5, 0x7f0e160e

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 537
    const v5, 0x7f0e160f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 540
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    invoke-virtual {v5}, Lcom/android/settings/DCMHomeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020109

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    const v5, 0x7f0e1610

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 542
    const v5, 0x7f0e1611

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 551
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v4    # "summary":Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    iget-object v5, v5, Lcom/android/settings/DCMHomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 552
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f08005b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 554
    if-eqz v2, :cond_1

    .line 555
    const v5, 0x7f0d06a6

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 556
    .restart local v1    # "icon":Landroid/widget/ImageView;
    const v5, 0x7f0d06a7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 557
    .restart local v3    # "label":Landroid/widget/TextView;
    const v5, 0x7f0d06a9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 559
    .restart local v0    # "button":Landroid/widget/RadioButton;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/DCMHomeSettings;->access$600(Lcom/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings/DCMHomeSettings;->access$600(Lcom/android/settings/DCMHomeSettings;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v5, p0, Lcom/android/settings/DCMHomeSettings$HomeAdapter;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I
    invoke-static {v5}, Lcom/android/settings/DCMHomeSettings;->access$100(Lcom/android/settings/DCMHomeSettings;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 563
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 528
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

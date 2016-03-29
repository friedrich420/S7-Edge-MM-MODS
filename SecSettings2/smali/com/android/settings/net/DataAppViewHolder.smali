.class public Lcom/android/settings/net/DataAppViewHolder;
.super Ljava/lang/Object;
.source "DataAppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public dataCheckBox:Landroid/widget/CheckBox;

.field public dataCompoundButton:Landroid/widget/CompoundButton;

.field public dataSwitch:Landroid/widget/Switch;

.field public dataTotal:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public wifiCheckBox:Landroid/widget/CheckBox;

.field public wifiTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;Z)Lcom/android/settings/net/DataAppViewHolder;
    .locals 4
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "bShowWifi"    # Z

    .prologue
    const/16 v3, 0x8

    .line 31
    if-nez p1, :cond_1

    .line 32
    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/android/settings/net/DataAppViewHolder;

    invoke-direct {v0}, Lcom/android/settings/net/DataAppViewHolder;-><init>()V

    .line 37
    .local v0, "holder":Lcom/android/settings/net/DataAppViewHolder;
    iput-object p1, v0, Lcom/android/settings/net/DataAppViewHolder;->rootView:Landroid/view/View;

    .line 38
    const v1, 0x7f0d00b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->appName:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0d00b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 40
    const v1, 0x7f0d00b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataTotal:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0d00b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiTotal:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0d00b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCheckBox:Landroid/widget/CheckBox;

    .line 43
    const v1, 0x7f0d00b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiCheckBox:Landroid/widget/CheckBox;

    .line 44
    const v1, 0x7f0d00b6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataSwitch:Landroid/widget/Switch;

    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 47
    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCheckBox:Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    .line 54
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    .end local v0    # "holder":Lcom/android/settings/net/DataAppViewHolder;
    :goto_1
    return-object v0

    .line 49
    .restart local v0    # "holder":Lcom/android/settings/net/DataAppViewHolder;
    :cond_0
    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 50
    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 51
    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->wifiTotal:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataSwitch:Landroid/widget/Switch;

    iput-object v1, v0, Lcom/android/settings/net/DataAppViewHolder;->dataCompoundButton:Landroid/widget/CompoundButton;

    goto :goto_0

    .line 60
    .end local v0    # "holder":Lcom/android/settings/net/DataAppViewHolder;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/net/DataAppViewHolder;

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/net/DataAppViewHolder;->dataSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 65
    iget-object v1, p0, Lcom/android/settings/net/DataAppViewHolder;->rootView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

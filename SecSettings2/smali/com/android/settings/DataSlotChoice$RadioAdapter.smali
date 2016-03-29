.class public Lcom/android/settings/DataSlotChoice$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public itemList:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field public mFlag:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;[Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "objects"    # [Ljava/lang/String;
    .param p4, "flag"    # [Z

    .prologue
    const/4 v1, 0x2

    .line 708
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 695
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    .line 696
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->itemList:[Ljava/lang/String;

    .line 710
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mContext:Landroid/content/Context;

    .line 711
    iput-object p4, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    .line 712
    iput-object p3, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->itemList:[Ljava/lang/String;

    .line 713
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 720
    if-nez p2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 722
    .local v0, "li":Landroid/view/LayoutInflater;
    const v2, 0x7f040124

    invoke-virtual {v0, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 725
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 727
    .local v1, "text1":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->itemList:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 729
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 730
    iget-object v2, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 731
    return-object p2

    :cond_1
    move v2, v4

    .line 729
    goto :goto_0

    :cond_2
    move v3, v4

    .line 730
    goto :goto_1
.end method

.method public setFlag([Z)V
    .locals 0
    .param p1, "flag"    # [Z

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/settings/DataSlotChoice$RadioAdapter;->mFlag:[Z

    .line 717
    return-void
.end method

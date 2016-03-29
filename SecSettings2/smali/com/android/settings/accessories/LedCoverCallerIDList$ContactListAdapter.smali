.class public Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LedCoverCallerIDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessories/LedCoverCallerIDList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 388
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mContext:Landroid/content/Context;

    .line 390
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 393
    iget-object v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 397
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 398
    const v3, 0x7f04011e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 399
    new-instance v0, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;-><init>()V

    .line 401
    .local v0, "holder":Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;
    const v3, 0x7f0d031d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->text:Landroid/widget/TextView;

    .line 402
    const v3, 0x7f0d031b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 404
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 409
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v3}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 410
    iget-object v4, v0, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v3}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v3}, Lcom/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 412
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 413
    iget-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f0201b5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-object p2

    .line 406
    .end local v0    # "holder":Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;
    goto :goto_0

    .line 415
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.class public Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LedCoverCallerIDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessories/LedCoverCallerIDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallerIdAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;>;"
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSettings;

    .line 181
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 182
    iput-object p2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 191
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 192
    const v2, 0x7f040120

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 193
    new-instance v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;-><init>()V

    .line 195
    .local v0, "holder":Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;
    const v2, 0x7f0d031b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 196
    const v2, 0x7f0d031d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 197
    const v2, 0x7f0d0322

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;->count:Landroid/widget/TextView;

    .line 199
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v2, v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mName:I

    if-eqz v2, :cond_1

    .line 205
    iget-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v2, v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mIcon:I

    # invokes: Lcom/android/settings/accessories/LedCoverCallerIDSettings;->encircle(I)Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v2}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->access$000(Lcom/android/settings/accessories/LedCoverCallerIDSettings;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v2, v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mName:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;->count:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSettings;

    const v4, 0x7f0e12cd

    invoke-virtual {v2, v4}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v2, v2, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_1
    return-object p2

    .line 201
    .end local v0    # "holder":Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;
    goto :goto_0

    .line 211
    :cond_1
    const-string v2, "LedCoverCallerIDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallerIdAdapter getView, position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

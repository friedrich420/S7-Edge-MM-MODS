.class public Lcom/android/settings/activekey/AppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/activekey/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/activekey/AppList$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/activekey/AppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V
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
            "Lcom/android/settings/activekey/AppList$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/activekey/AppList$AppListItem;>;"
    iput-object p1, p0, Lcom/android/settings/activekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/activekey/AppList;

    .line 191
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 193
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 196
    iget-object v3, p0, Lcom/android/settings/activekey/AppList$AppListAdapter;->this$0:Lcom/android/settings/activekey/AppList;

    invoke-virtual {v3}, Lcom/android/settings/activekey/AppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 197
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04012b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 199
    const v3, 0x7f0d00b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 200
    .local v1, "appName":Landroid/widget/TextView;
    const v3, 0x7f0d00b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 202
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v3, v3, Lcom/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v3, v3, Lcom/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v3, v3, Lcom/android/settings/activekey/AppList$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v3, v3, Lcom/android/settings/activekey/AppList$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_1
    return-object p2
.end method

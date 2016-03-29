.class public Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method public constructor <init>(Lcom/android/settings/lockappshortcut/AppShortcutList;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
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
            "Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;>;"
    iput-object p1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    .line 227
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 228
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 230
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    .param p1, "x1"    # Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->setSelected(Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040128

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 270
    .local v1, "row":Landroid/view/View;
    const v2, 0x7f0d0329

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "header":Landroid/view/View;
    new-instance v2, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter$1;-><init>(Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-object v1
.end method

.method private setSelected(Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V
    .locals 1
    .param p1, "appItemInfo"    # Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    invoke-virtual {v0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList;->saveApplicationData(Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->notifyDataSetChanged()V

    .line 266
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f0d0329

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .line 236
    .local v1, "appItemInfo":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 238
    .local v3, "row":Landroid/view/View;
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 240
    const v4, 0x7f0d00b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    .local v2, "appName":Landroid/widget/TextView;
    const v4, 0x7f0d00b2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 244
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->this$0:Lcom/android/settings/lockappshortcut/AppShortcutList;

    # getter for: Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v4}, Lcom/android/settings/lockappshortcut/AppShortcutList;->access$200(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-boolean v4, v4, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsActive:Z

    if-ne v4, v6, :cond_3

    .line 250
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 252
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 259
    :goto_1
    return-object v3

    .line 236
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v2    # "appName":Landroid/widget/TextView;
    .end local v3    # "row":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 254
    .restart local v0    # "appIcon":Landroid/widget/ImageView;
    .restart local v2    # "appName":Landroid/widget/TextView;
    .restart local v3    # "row":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 256
    const v4, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

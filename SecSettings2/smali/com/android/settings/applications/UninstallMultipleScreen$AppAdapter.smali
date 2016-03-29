.class Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;
.super Landroid/widget/BaseAdapter;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;>;"
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 126
    iput-object p3, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    .line 127
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 128
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    .line 145
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 151
    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0401e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 152
    .local v4, "view":Landroid/view/View;
    move v2, p1

    .line 153
    .local v2, "listposition":I
    const v5, 0x1020001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 154
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/settings/applications/UninstallMultipleScreen;->access$100(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$200(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    const v5, 0x1020014

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    # getter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->appname:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$300(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-object v4
.end method

.class public Lcom/android/settings/UserAdapter;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserAdapter$UserDetails;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UserAdapter$UserDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UserAdapter$UserDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/UserAdapter$UserDetails;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p2, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A list of user details must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p2, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    .line 83
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 84
    return-void
.end method

.method private createUser(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/UserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040228

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getTitle(Lcom/android/settings/UserAdapter$UserDetails;)I
    .locals 2
    .param p1, "user"    # Lcom/android/settings/UserAdapter$UserDetails;

    .prologue
    .line 104
    # getter for: Lcom/android/settings/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {p1}, Lcom/android/settings/UserAdapter$UserDetails;->access$000(Lcom/android/settings/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 105
    .local v0, "userHandle":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 107
    :cond_0
    const v1, 0x7f0e05dd

    .line 109
    :goto_0
    return v1

    :cond_1
    const v1, 0x7f0e05de

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 97
    .local v0, "row":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/UserAdapter$UserDetails;

    .line 98
    .local v1, "user":Lcom/android/settings/UserAdapter$UserDetails;
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # getter for: Lcom/android/settings/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings/UserAdapter$UserDetails;->access$100(Lcom/android/settings/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/settings/UserAdapter;->getTitle(Lcom/android/settings/UserAdapter$UserDetails;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 100
    return-object v0

    .line 95
    .end local v0    # "row":Landroid/view/View;
    .end local v1    # "user":Lcom/android/settings/UserAdapter$UserDetails;
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settings/UserAdapter;->createUser(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/settings/UserAdapter$UserDetails;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserAdapter$UserDetails;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/settings/UserAdapter;->getItem(I)Lcom/android/settings/UserAdapter$UserDetails;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserAdapter$UserDetails;

    # getter for: Lcom/android/settings/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v0}, Lcom/android/settings/UserAdapter$UserDetails;->access$000(Lcom/android/settings/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle(I)Landroid/os/UserHandle;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 87
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserAdapter$UserDetails;

    # getter for: Lcom/android/settings/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v0}, Lcom/android/settings/UserAdapter$UserDetails;->access$000(Lcom/android/settings/UserAdapter$UserDetails;)Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/UserAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/UserAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 120
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 125
    return-void
.end method

.class public Lcom/android/settings/applications/UninstallMultipleScreen;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UninstallMultipleScreen.java"

# interfaces
.implements Landroid/content/pm/IPackageDeleteObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;,
        Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;,
        Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

.field private mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

.field private mAppListView:Landroid/widget/ListView;

.field private mDownloadedAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mMultiSelectionActionMode:Lcom/android/settings/widget/MultiSelectionActionMode;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private selectedPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uninstallPkgCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    const-string v0, "UninstallMultipleScreen"

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->uninstallPkgCount:I

    .line 174
    new-instance v0, Lcom/android/settings/applications/UninstallMultipleScreen$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$2;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UninstallPackages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 194
    new-instance v0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    .line 195
    .local v0, "observer":Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;
    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/UninstallMultipleScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->showConfirmationDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/UninstallMultipleScreen;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/UninstallMultipleScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/UninstallMultipleScreen;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/applications/UninstallMultipleScreen;->UninstallPackages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/applications/UninstallMultipleScreen;)Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/UninstallMultipleScreen;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    return-object v0
.end method

.method private getInstalledApps()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 238
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v4, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 241
    .local v3, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 242
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 244
    .local v2, "p":Landroid/content/pm/PackageInfo;
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_0

    .line 241
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    new-instance v1, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;

    invoke-direct {v1}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;-><init>()V

    .line 249
    .local v1, "newInfo":Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->appname:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$302(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    # setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->pname:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$802(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    # setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionName:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$902(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    # setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->versionCode:I
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$1002(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;I)I

    .line 253
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    # setter for: Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;->access$202(Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 254
    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInstalledApps() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    .end local v1    # "newInfo":Lcom/android/settings/applications/UninstallMultipleScreen$PInfo;
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    :cond_1
    return-object v4
.end method

.method private showConfirmationDialog()V
    .locals 6

    .prologue
    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e1389

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e138a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/applications/UninstallMultipleScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00ef

    new-instance v3, Lcom/android/settings/applications/UninstallMultipleScreen$4;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$4;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01ba

    new-instance v3, Lcom/android/settings/applications/UninstallMultipleScreen$3;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$3;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 235
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x82

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e1389

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/UninstallMultipleScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v0, Lcom/android/settings/applications/UninstallMultipleScreen$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/UninstallMultipleScreen$1;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->selectedPackages:Ljava/util/List;

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 98
    const v1, 0x7f04021e

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 99
    .local v6, "appListView":Landroid/view/View;
    const v1, 0x7f0d04fe

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    .line 100
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getInstalledApps()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDownloadedAppsList:Ljava/util/ArrayList;

    .line 103
    new-instance v1, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mDownloadedAppsList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v4, v5}, Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;-><init>(Lcom/android/settings/applications/UninstallMultipleScreen;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    .line 104
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAdapter:Lcom/android/settings/applications/UninstallMultipleScreen$AppAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 108
    .local v7, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f0c00b0

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    const v4, 0x7f0c00aa

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v2, v1, v4

    .line 111
    .local v2, "divider_inset_size":I
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 112
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 115
    new-instance v1, Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mActionModeCallback:Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;

    iget-object v5, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mAppListView:Landroid/widget/ListView;

    invoke-direct {v1, v3, v4, v5}, Lcom/android/settings/widget/MultiSelectionActionMode;-><init>(Landroid/content/Context;Lcom/android/settings/widget/MultiSelectionActionMode$ObservableActionModeCallback;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mMultiSelectionActionMode:Lcom/android/settings/widget/MultiSelectionActionMode;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/UninstallMultipleScreen;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/UninstallMultipleScreen;->mMultiSelectionActionMode:Lcom/android/settings/widget/MultiSelectionActionMode;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 118
    return-object v6
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    return-void
.end method

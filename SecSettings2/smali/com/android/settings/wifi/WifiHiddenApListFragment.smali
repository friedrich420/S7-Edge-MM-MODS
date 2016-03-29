.class public Lcom/android/settings/wifi/WifiHiddenApListFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiHiddenApListFragment.java"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mRemoveMenu:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment$1;-><init>(Lcom/android/settings/wifi/WifiHiddenApListFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Lcom/android/settings/wifi/WifiHiddenApAddDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiHiddenApListFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApListFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiHiddenApListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApListFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->saveFile()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiHiddenApListFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addListItems()V
    .locals 6

    .prologue
    .line 227
    const-string v4, "/data/misc/wifi/hiddenAPs.txt"

    .line 229
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 230
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 250
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "accessPoint":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    .end local v3    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 245
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private saveFile()V
    .locals 5

    .prologue
    .line 253
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 254
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 255
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0xf0

    iput v3, v1, Landroid/os/Message;->what:I

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "hiddenAps"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 258
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 260
    return-void
.end method

.method private updateEmptyView(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 183
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x67

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 117
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->updateEmptyView(I)V

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    const v0, 0x7f0e0357

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 130
    const/4 v0, 0x2

    const v1, 0x7f0e0359

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mRemoveMenu:Landroid/view/MenuItem;

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mRemoveMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->updateMenu()V

    .line 134
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    const v2, 0x7f040262

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 77
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->setHasOptionsMenu(Z)V

    .line 79
    const v2, 0x7f0d047e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mListView:Landroid/widget/ListView;

    .line 81
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 85
    .local v0, "emptyView":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 86
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mContext:Landroid/content/Context;

    const v4, 0x1090003

    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 87
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->updateEmptyView(I)V

    .line 92
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->dismiss()V

    .line 112
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 113
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0e0353

    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 141
    :sswitch_0
    new-instance v0, Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    const v1, 0x7f0e03da

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->setTitle(I)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mDialogConfigure:Lcom/android/settings/wifi/WifiHiddenApAddDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiHiddenApAddDialog;->show()V

    move v0, v10

    .line 145
    goto :goto_0

    .line 147
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v10

    .line 156
    goto :goto_0

    .line 152
    :cond_0
    const-class v0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 158
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->finish()V

    move v0, v10

    .line 160
    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->addListItems()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApListFragment;->updateMenu()V

    .line 104
    return-void
.end method

.method public updateMenu()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mRemoveMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mRemoveMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApListFragment;->mRemoveMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

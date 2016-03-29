.class public Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiHiddenApDeleteFragment.java"


# instance fields
.field private disableOpacity:F

.field private enableOpacity:F

.field private mActionBarView:Landroid/view/View;

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

.field private mContext:Landroid/content/Context;

.field private mCountTextView:Landroid/widget/TextView;

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

.field private mRemoveButton:Landroid/view/View;

.field private mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveTextView:Landroid/widget/TextView;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->enableOpacity:F

    .line 68
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->removeListItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private addListItems()V
    .locals 6

    .prologue
    .line 187
    const-string v4, "/data/misc/wifi/hiddenAPs.txt"

    .line 189
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 190
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 197
    .local v0, "accessPoint":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 205
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    .end local v3    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 205
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private removeListItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 248
    :goto_0
    return-void

    .line 226
    :cond_0
    const v5, 0x7f0e035a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 229
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 230
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 236
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 241
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 242
    .local v4, "wm":Landroid/net/wifi/WifiManager;
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 243
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0xf0

    iput v5, v3, Landroid/os/Message;->what:I

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "hiddenAps"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 246
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 216
    const/16 v0, 0x67

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x2

    .line 82
    const v3, 0x7f040261

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 84
    .local v2, "view":Landroid/view/View;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 85
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040260

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    .line 87
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    const v4, 0x7f0d055a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    .line 88
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    const v4, 0x7f0d055b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    .line 89
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 90
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    const v4, 0x7f0e049b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    new-instance v4, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$1;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 102
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 107
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    const v4, 0x7f0d05f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mCountTextView:Landroid/widget/TextView;

    .line 108
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mCountTextView:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    const v4, 0x7f0d05f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 110
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v3, 0x7f0d047e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    .line 133
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->addListItems()V

    .line 136
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    const v5, 0x1090010

    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 137
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v3, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 167
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->removeListItems()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->finish()V

    goto :goto_0

    .line 172
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->finish()V

    goto :goto_0

    .line 176
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->finish()V

    goto :goto_0

    .line 165
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.class public Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;
.super Landroid/app/Activity;
.source "ShareAccessibilityShareVia.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ShareAccessibilityShareVia_Init()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private addUserIdToUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 216
    if-nez p1, :cond_1

    .line 217
    const/4 p1, 0x0

    .line 229
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p1

    .line 220
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 221
    .local v1, "userId":I
    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-static {p1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 225
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method private getMediaUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 195
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 196
    .local v1, "mediaUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 199
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "_data= ? COLLATE LOCALIZED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    if-eqz v6, :cond_1

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->addUserIdToUri(Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 208
    if-eqz v6, :cond_0

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 212
    :cond_0
    :goto_0
    return-object v2

    .line 208
    :cond_1
    if-eqz v6, :cond_2

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v2, v7

    .line 212
    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    .line 208
    if-eqz v6, :cond_2

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private showContent(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "ShareVia_intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v3, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v3, "FOLDERPATH"

    sget-object v4, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "CONTENT_TYPE"

    const-string v4, "application/x-sasf"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v3, "JUST_SELECT_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    const-string v4, "/Accessibility"

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "external_path":Ljava/lang/String;
    const-string v3, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v3, "FOLDERPATH"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v3, "CONTENT_TYPE"

    const-string v4, "application/x-sasf"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v3, "JUST_SELECT_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const/4 v3, 0x2

    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private show_share_via_multi_files([Ljava/lang/String;)V
    .locals 9
    .param p1, "filePaths"    # [Ljava/lang/String;

    .prologue
    .line 165
    const-string v6, "ShareAccessibilityShareVia"

    const-string v7, "show_share_via_multi_files is entered"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_1

    .line 170
    const/4 v5, 0x0

    .line 171
    .local v5, "uri":Landroid/net/Uri;
    aget-object v6, p1, v2

    invoke-direct {p0, p0, v6}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getMediaUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 172
    if-nez v5, :cond_0

    .line 173
    new-instance v6, Ljava/io/File;

    aget-object v7, p1, v2

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 175
    :cond_0
    const-string v6, "ShareAccessibilityShareVia"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v4, "showshareViaMultiIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 181
    iget-object v6, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.android.qconnect"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    const-string v6, "more_actions_quick_connect"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    :cond_2
    const-string v6, "application/x-sasf"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const v6, 0x7f0e09d4

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 188
    .local v3, "intentNew":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private show_share_via_single_file(Ljava/lang/String;)V
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v4, "ShareAccessibilityShareVia"

    const-string v5, "show_share_via_single_file is entered"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, p0, p1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getMediaUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 144
    if-nez v3, :cond_0

    .line 145
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 147
    :cond_0
    const-string v4, "ShareAccessibilityShareVia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v2, "showshareViaSingleIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.qconnect"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    const-string v4, "more_actions_quick_connect"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    :cond_1
    const-string v4, "application/x-sasf"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const v4, 0x7f0e09d4

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 158
    .local v1, "intentNew":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 233
    if-nez p0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 111
    const-string v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz p3, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "files":[Ljava/lang/String;
    const-string v2, "FILE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    array-length v2, v0

    if-le v2, v6, :cond_2

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 120
    const-string v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult length is 1 more, PICK_MULTI_FILE path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->show_share_via_multi_files([Ljava/lang/String;)V

    .line 136
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    .line 137
    return-void

    .line 124
    .restart local v0    # "files":[Ljava/lang/String;
    :cond_2
    array-length v2, v0

    if-ne v2, v6, :cond_3

    .line 125
    const-string v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult length is 1, PICK_MULTI_FILE path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    aget-object v2, v0, v5

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->show_share_via_single_file(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_3
    const-string v2, "ShareAccessibilityShareVia"

    const-string v3, "PICK_MULTI_FILE : not selected"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v0    # "files":[Ljava/lang/String;
    :cond_4
    const-string v2, "ShareAccessibilityShareVia"

    const-string v3, "data is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->ShareAccessibilityShareVia_Init()V

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "ShareAccessibilityShareVia"

    const-string v3, "It is not possible to get Action"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Item"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 52
    .local v1, "item":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->showContent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "item":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ShareAccessibilityShareVia"

    const-string v3, "It is not possible to get selected item from Intent"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

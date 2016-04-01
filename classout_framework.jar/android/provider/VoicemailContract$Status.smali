.class public final Landroid/provider/VoicemailContract$Status;
.super Ljava/lang/Object;
.source "VoicemailContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/VoicemailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final CONFIGURATION_STATE:Ljava/lang/String; = "configuration_state"

.field public static final CONFIGURATION_STATE_CAN_BE_CONFIGURED:I = 0x2

.field public static final CONFIGURATION_STATE_NOT_CONFIGURED:I = 0x1

.field public static final CONFIGURATION_STATE_OK:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_CHANNEL_STATE:Ljava/lang/String; = "data_channel_state"

.field public static final DATA_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final DATA_CHANNEL_STATE_OK:I = 0x0

.field public static final DIR_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/voicemail.source.status"

.field public static final ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/voicemail.source.status"

.field public static final NOTIFICATION_CHANNEL_STATE:Ljava/lang/String; = "notification_channel_state"

.field public static final NOTIFICATION_CHANNEL_STATE_MESSAGE_WAITING:I = 0x2

.field public static final NOTIFICATION_CHANNEL_STATE_NO_CONNECTION:I = 0x1

.field public static final NOTIFICATION_CHANNEL_STATE_OK:I = 0x0

.field public static final PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "phone_account_component_name"

.field public static final PHONE_ACCOUNT_ID:Ljava/lang/String; = "phone_account_id"

.field public static final SETTINGS_URI:Ljava/lang/String; = "settings_uri"

.field public static final SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final VOICEMAIL_ACCESS_URI:Ljava/lang/String; = "voicemail_access_uri"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 334
    const-string v0, "content://com.android.voicemail/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    return-void
.end method

.method public static buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 456
    sget-object v0, CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "source_package"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static isStatusPresent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "statusUri"    # Landroid/net/Uri;

    .prologue
    .line 498
    const/4 v6, 0x0

    .line 500
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 501
    if-eqz v6, :cond_1a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1c

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 503
    :goto_14
    if-eqz v6, :cond_19

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_19
    return v0

    .line 501
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14

    .line 503
    :catchall_1c
    move-exception v0

    if-eqz v6, :cond_22

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_22
    throw v0
.end method

.method public static setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "configurationState"    # I
    .param p3, "dataChannelState"    # I
    .param p4, "notificationChannelState"    # I

    .prologue
    const/4 v5, 0x0

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 474
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 475
    .local v1, "statusUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 476
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "phone_account_component_name"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v3, "phone_account_id"

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v3, "configuration_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    const-string v3, "data_channel_state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    const-string/jumbo v3, "notification_channel_state"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    invoke-static {v0, v1}, isStatusPresent(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 484
    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    :goto_4f
    return-void

    .line 486
    :cond_50
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_4f
.end method

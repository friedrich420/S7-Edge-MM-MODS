.class public Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.super Landroid/os/Binder;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;,
        Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_BLOCKED_KEY:Ljava/lang/String; = "cover_authentication_blocked"

.field private static final BLACKLIST_ROOT:Ljava/lang/String;

.field public static final BLACKLIST_SEPARATOR:Ljava/lang/String; = ","

.field private static final DBG:Z

.field public static final PUBKEY_BLACKLIST_KEY:Ljava/lang/String; = "cover_pubkey_blacklist"

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CertBlacklister"

.field private static mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

.field private static mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

.field private static mIsBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, DBG:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANDROID_DATA"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/misc/saccessory_manager/keychain/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, BLACKLIST_ROOT:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, BLACKLIST_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cover_pubkey_blacklist.txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, PUBKEY_PATH:Ljava/lang/String;

    .line 54
    sput-boolean v1, mIsBlocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, registerObservers(Landroid/content/ContentResolver;)V

    .line 212
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$400()Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
    .registers 1

    .prologue
    .line 34
    sget-object v0, mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    return-object v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, mIsBlocked:Z

    return p0
.end method

.method private buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 222
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;

    const-string v1, "cover_authentication_blocked"

    invoke-direct {v0, v1, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;
    .registers 6
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 215
    new-instance v0, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    const-string v1, "cover_pubkey_blacklist"

    const-string/jumbo v2, "pubkey"

    sget-object v3, PUBKEY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private registerObservers(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-direct {p0, p1}, buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    move-result-object v0

    sput-object v0, mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    .line 228
    const-string v0, "cover_pubkey_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    const-string v0, "cover_authentication_blocked"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1}, buildAuthenticationSettingObserver(Landroid/content/ContentResolver;)Lcom/samsung/accessory/manager/authentication/CertBlacklister$AuthenticationSettingObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    return-void
.end method


# virtual methods
.method public isAuthenticationBlocked()Z
    .registers 2

    .prologue
    .line 67
    sget-boolean v0, mIsBlocked:Z

    return v0
.end method

.method public isThisKeyBlacklisted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->isThisKeyBlacklisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readFile()V
    .registers 2

    .prologue
    .line 75
    sget-object v0, mBlacklistObserver:Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/CertBlacklister$BlacklistObserver;->readFile()V

    .line 76
    return-void
.end method

.method public setCertBlacklistListener(Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    .prologue
    .line 62
    sput-object p1, mCertBlacklistListener:Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;

    .line 63
    return-void
.end method

.class public Lcom/android/settings/nfc/OtherBackend;
.super Ljava/lang/Object;
.source "OtherBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private final mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/android/settings/nfc/OtherBackend;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 39
    iget-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 40
    return-void
.end method


# virtual methods
.method public disableDefaultOtherApp(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Settings.OtherBackend"

    const-string v1, "support other category - unsetOtherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/CardEmulation;->unsetOtherService(Landroid/content/ComponentName;)Z

    .line 103
    return-void
.end method

.method public enableDefaultOtherApp(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "app"    # Landroid/content/ComponentName;

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/settings/nfc/OtherBackend;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Settings.OtherBackend"

    const-string v1, "support other category - setOtherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    invoke-virtual {v0, p1}, Landroid/nfc/cardemulation/CardEmulation;->setOtherService(Landroid/content/ComponentName;)Z

    .line 93
    return-void
.end method

.method public getOtherAppInfos()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v6, p0, Lcom/android/settings/nfc/OtherBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 44
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/settings/nfc/OtherBackend;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const-string v7, "other"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 46
    .local v5, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;>;"
    if-nez v5, :cond_1

    .line 82
    :cond_0
    return-object v1

    .line 50
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 51
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 54
    :cond_2
    new-instance v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    invoke-direct {v0}, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;-><init>()V

    .line 56
    .local v0, "appInfo":Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    .line 57
    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 64
    :cond_3
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->title:Ljava/lang/CharSequence;

    .line 67
    iget-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    if-nez v6, :cond_4

    .line 68
    invoke-virtual {v4, v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    .line 72
    :cond_4
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    .line 78
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    .line 79
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

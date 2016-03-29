.class public Lcom/android/systemui/statusbar/policy/PreviewInflater;
.super Ljava/lang/Object;
.source "PreviewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/PreviewInflater$1;,
        Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneResId:I

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mPhoneResId:I

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 67
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    .line 69
    return-void
.end method

.method public static getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I

    .prologue
    const/4 v3, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 317
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    invoke-virtual {v1, p1, v4, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object v3

    .line 322
    :cond_1
    const v4, 0x10080

    invoke-virtual {v1, p1, v4, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 324
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method private getThemePackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 280
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 282
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-object v1

    .line 285
    :cond_1
    const v4, 0x10080

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 288
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v1

    .line 298
    .local v1, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    if-eqz v1, :cond_0

    .line 299
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    iput v4, v1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I

    goto :goto_0
.end method

.method private getWidgetInfoFromMetaData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "contextPackage"    # Ljava/lang/String;
    .param p3, "metaData"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 233
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 236
    :cond_0
    const-string v4, "PreviewInflater"

    const-string v6, "metaData == null || metaData.isEmpty()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 275
    :goto_0
    return-object v1

    .line 242
    :cond_1
    const/4 v2, 0x0

    .line 243
    .local v2, "layoutId":I
    const/4 v3, 0x0

    .line 244
    .local v3, "mobileKeyboardOn":Z
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 245
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 246
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v6, v4, :cond_3

    move v3, v4

    .line 250
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_2
    :goto_1
    const-string v4, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 251
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 252
    const-string v4, "com.android.keyguard.mobilekeyboard.layout"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    :goto_2
    if-nez v2, :cond_8

    .line 268
    const-string v4, "PreviewInflater"

    const-string v6, "layoutId == 0"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 269
    goto :goto_0

    .line 246
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 253
    .end local v0    # "conf":Landroid/content/res/Configuration;
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getThemePackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 254
    const-string v4, "com.android.keyguard.theme.layout"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 256
    :cond_5
    const-string v4, "com.android.keyguard.layout"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 259
    :cond_6
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    .line 260
    const-string v4, "com.android.keyguard.mobilekeyboard.layout"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 262
    :cond_7
    const-string v4, "com.android.keyguard.layout"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 272
    :cond_8
    new-instance v1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    invoke-direct {v1, v5}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$1;)V

    .line 273
    .local v1, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    iput-object p2, v1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 274
    iput v2, v1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    goto :goto_0
.end method

.method private getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 221
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v1, v4, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 223
    .local v1, "metaData":Landroid/os/Bundle;
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromMetaData(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 228
    .end local v1    # "metaData":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PreviewInflater"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load preview; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    .prologue
    const/4 v1, 0x0

    .line 192
    if-nez p1, :cond_1

    move-object v0, v1

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 197
    goto :goto_0
.end method

.method private inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;
    .locals 7
    .param p1, "widgetInfo"    # Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 205
    .local v3, "widgetView":Landroid/view/View;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 207
    .local v0, "appContext":Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 209
    .local v1, "appInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 210
    iget v4, p1, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 214
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "appInflater":Landroid/view/LayoutInflater;
    :goto_0
    return-object v3

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "PreviewInflater"

    const-string v5, "Error creating widget view"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 211
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private isCameraIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "currentUserId"    # I

    .prologue
    .line 307
    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getTargetActivityInfo(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p0, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 336
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 337
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v2, 0x0

    .line 342
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v2

    .line 335
    .restart local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public inflatePreview(Landroid/content/Intent;)Landroid/view/View;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v2

    .line 110
    .local v2, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    if-nez v2, :cond_1

    .line 111
    const-string v7, "PreviewInflater"

    const-string v8, "info == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 183
    :cond_0
    :goto_0
    return-object v5

    .line 115
    :cond_1
    const/4 v3, 0x0

    .line 116
    .local v3, "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    const/4 v0, 0x0

    .line 118
    .local v0, "currentResId":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->isDialIntent(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 120
    iget-object v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 121
    const-string v7, "PreviewInflater"

    const-string v8, "switching default dialer action"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-eqz v7, :cond_3

    .line 124
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    const-string v8, "com.android.contacts"

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    new-instance v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .local v4, "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :try_start_1
    iget-object v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 128
    iput v0, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    .line 129
    iget v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I

    iput v7, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 131
    .end local v4    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .restart local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :cond_2
    :try_start_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mPhoneResId:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 136
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 137
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.dialer.action.ACTION_PHONE_PREVIEW"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v2

    .line 138
    if-nez v2, :cond_5

    .line 139
    const-string v7, "PreviewInflater"

    const-string v8, "info == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 140
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v7, "PreviewInflater"

    const-string v8, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v7, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 144
    iget v7, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    iput v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    .line 145
    iget v7, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I

    iput v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I

    .line 179
    :cond_5
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflateWidgetView(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v5

    .line 180
    .local v5, "v":Landroid/view/View;
    if-nez v5, :cond_0

    move-object v5, v6

    .line 181
    goto :goto_0

    .line 148
    .end local v5    # "v":Landroid/view/View;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->isCameraIntent(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 149
    iget-object v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    const-string v8, "com.sec.android.app.camera"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 150
    const-string v7, "PreviewInflater"

    const-string v8, "switching default camera action"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    if-eqz v7, :cond_7

    .line 153
    :try_start_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/PreviewInflater;->mWm:Landroid/view/IWindowManager;

    const-string v8, "com.sec.android.app.camera"

    invoke-interface {v7, v8}, Landroid/view/IWindowManager;->getKeyguardPreviewLayoutResId(Ljava/lang/String;)I

    move-result v0

    .line 154
    if-eqz v0, :cond_7

    .line 155
    new-instance v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;-><init>(Lcom/android/systemui/statusbar/policy/PreviewInflater$1;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 156
    .end local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .restart local v4    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :try_start_4
    iget-object v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 157
    iput v0, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    .line 158
    iget v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I

    iput v7, v4, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v4

    .line 164
    .end local v4    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .restart local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :cond_7
    :goto_4
    if-nez v3, :cond_8

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfo(Landroid/content/Intent;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v2

    .line 166
    if-nez v2, :cond_5

    .line 167
    const-string v7, "PreviewInflater"

    const-string v8, "info == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 168
    goto/16 :goto_0

    .line 160
    :catch_1
    move-exception v1

    .line 161
    .restart local v1    # "e":Landroid/os/RemoteException;
    :goto_5
    const-string v7, "PreviewInflater"

    const-string v8, "RemoteException while getKeyguardPreviewLayoutResId()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 171
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    iget-object v7, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->contextPackage:Ljava/lang/String;

    .line 172
    iget v7, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    iput v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->layoutId:I

    .line 173
    iget v7, v3, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I

    iput v7, v2, Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;->theme:I

    goto :goto_3

    .line 160
    .end local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .restart local v4    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .restart local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    goto :goto_5

    .line 132
    .end local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .restart local v4    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    .restart local v3    # "newInfo":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    goto :goto_2
.end method

.method public inflatePreviewFromService(Landroid/content/ComponentName;)Landroid/view/View;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->getWidgetInfoFromService(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;

    move-result-object v0

    .line 188
    .local v0, "info":Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Lcom/android/systemui/statusbar/policy/PreviewInflater$WidgetInfo;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

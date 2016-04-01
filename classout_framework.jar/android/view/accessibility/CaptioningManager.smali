.class public Landroid/view/accessibility/CaptioningManager;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;,
        Landroid/view/accessibility/CaptioningManager$CaptionStyle;,
        Landroid/view/accessibility/CaptioningManager$MyContentObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:I = 0x0

.field private static final DEFAULT_FONT_SCALE:F = 1.0f

.field private static final DEFAULT_PRESET:I


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStyleChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mListeners:Ljava/util/ArrayList;

    .line 257
    new-instance v1, Landroid/view/accessibility/CaptioningManager$1;

    invoke-direct {v1, p0}, Landroid/view/accessibility/CaptioningManager$1;-><init>(Landroid/view/accessibility/CaptioningManager;)V

    iput-object v1, p0, mStyleChangedRunnable:Ljava/lang/Runnable;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/view/accessibility/CaptioningManager$MyContentObserver;

    invoke-direct {v1, p0, v0}, Landroid/view/accessibility/CaptioningManager$MyContentObserver;-><init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V

    iput-object v1, p0, mContentObserver:Landroid/database/ContentObserver;

    .line 69
    return-void
.end method

.method static synthetic access$000(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 45
    invoke-direct {p0}, notifyEnabledChanged()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 45
    invoke-direct {p0}, notifyLocaleChanged()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 45
    invoke-direct {p0}, notifyFontScaleChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 45
    iget-object v0, p0, mStyleChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/accessibility/CaptioningManager;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/accessibility/CaptioningManager;

    .prologue
    .line 45
    invoke-direct {p0}, notifyUserStyleChanged()V

    return-void
.end method

.method private notifyEnabledChanged()V
    .registers 6

    .prologue
    .line 189
    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    .line 190
    .local v0, "enabled":Z
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 191
    :try_start_7
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 192
    .local v2, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v2, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onEnabledChanged(Z)V

    goto :goto_d

    .line 194
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 195
    return-void
.end method

.method private notifyFontScaleChanged()V
    .registers 6

    .prologue
    .line 216
    invoke-virtual {p0}, getFontScale()F

    move-result v0

    .line 217
    .local v0, "fontScale":F
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 218
    :try_start_7
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 219
    .local v2, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v2, v0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onFontScaleChanged(F)V

    goto :goto_d

    .line 221
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 222
    return-void
.end method

.method private notifyLocaleChanged()V
    .registers 6

    .prologue
    .line 207
    invoke-virtual {p0}, getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 208
    .local v2, "locale":Ljava/util/Locale;
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 209
    :try_start_7
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 210
    .local v1, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onLocaleChanged(Ljava/util/Locale;)V

    goto :goto_d

    .line 212
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 213
    return-void
.end method

.method private notifyUserStyleChanged()V
    .registers 6

    .prologue
    .line 198
    invoke-virtual {p0}, getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .line 199
    .local v2, "userStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 200
    :try_start_7
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 201
    .local v1, "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;->onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    goto :goto_d

    .line 203
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
    :catchall_1d
    move-exception v3

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 204
    return-void
.end method

.method private registerObserver(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 170
    return-void
.end method


# virtual methods
.method public addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .prologue
    .line 150
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 151
    :try_start_3
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 152
    const-string v0, "accessibility_captioning_enabled"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 153
    const-string v0, "accessibility_captioning_foreground_color"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 154
    const-string v0, "accessibility_captioning_background_color"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 155
    const-string v0, "accessibility_captioning_window_color"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 156
    const-string v0, "accessibility_captioning_edge_type"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 157
    const-string v0, "accessibility_captioning_edge_color"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 158
    const-string v0, "accessibility_captioning_typeface"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 159
    const-string v0, "accessibility_captioning_font_scale"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 160
    const-string v0, "accessibility_captioning_locale"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 161
    const-string v0, "accessibility_captioning_preset"

    invoke-direct {p0, v0}, registerObserver(Ljava/lang/String;)V

    .line 164
    :cond_3d
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public final getFontScale()F
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getLocale()Ljava/util/Locale;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-virtual {p0}, getRawLocale()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "rawLocale":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 97
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "splitLocale":[Ljava/lang/String;
    array-length v2, v1

    packed-switch v2, :pswitch_data_38

    .line 108
    .end local v1    # "splitLocale":[Ljava/lang/String;
    :cond_16
    const/4 v2, 0x0

    :goto_17
    return-object v2

    .line 100
    .restart local v1    # "splitLocale":[Ljava/lang/String;
    :pswitch_18
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 102
    :pswitch_25
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 104
    :pswitch_2f
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 98
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_25
        :pswitch_18
    .end packed-switch
.end method

.method public final getRawLocale()Ljava/lang/String;
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_locale"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawUserStyle()I
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_captioning_preset"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .registers 3

    .prologue
    .line 135
    invoke-virtual {p0}, getRawUserStyle()I

    move-result v0

    .line 136
    .local v0, "preset":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 137
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    .line 140
    :goto_d
    return-object v1

    :cond_e
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v1, v1, v0

    goto :goto_d
.end method

.method public final isEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "accessibility_captioning_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .prologue
    .line 179
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 180
    :try_start_3
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 183
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    :cond_17
    monitor-exit v1

    .line 186
    return-void

    .line 185
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

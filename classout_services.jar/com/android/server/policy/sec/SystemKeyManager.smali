.class public Lcom/android/server/policy/sec/SystemKeyManager;
.super Ljava/lang/Object;
.source "SystemKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SystemKeyManager"


# instance fields
.field private mEndCallKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedWindow:Landroid/content/ComponentName;

.field private mHomeKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyComponentsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaKeyPass:Z

.field private mMetaKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentBTKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mTopActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mHomeKeyRequestedComponents:Ljava/util/HashSet;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mPowerKeyRequestedComponents:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mRecentKeyRequestedComponents:Ljava/util/HashSet;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mRecentBTKeyRequestedComponents:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mEndCallKeyRequestedComponents:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mMetaKeyRequestedComponents:Ljava/util/HashSet;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mKeyComponentsMap:Ljava/util/HashMap;

    .line 50
    iput-object v1, p0, mTopActivity:Landroid/content/ComponentName;

    .line 51
    iput-object v1, p0, mFocusedWindow:Landroid/content/ComponentName;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, mMetaKeyPass:Z

    .line 55
    iget-object v0, p0, mKeyComponentsMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, mHomeKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, mPowerKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v1, 0xbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, mRecentKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, mKeyComponentsMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, mEndCallKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, mRecentBTKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 195
    const/4 v2, 0x0

    .line 198
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 203
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 204
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 214
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 199
    :catch_19
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 205
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 208
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 209
    :catch_26
    move-exception v1

    .line 210
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v5, p0, mKeyComponentsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 220
    .local v2, "iIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 222
    .local v4, "keyCode":Ljava/lang/Integer;
    iget-object v5, p0, mKeyComponentsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 223
    .local v0, "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 224
    .local v3, "info":Landroid/content/ComponentName;
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    const-string v5, "="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 237
    .end local v0    # "components":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "info":Landroid/content/ComponentName;
    .end local v4    # "keyCode":Ljava/lang/Integer;
    :catchall_4f
    move-exception v5

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_4f

    throw v5

    .line 231
    .restart local v2    # "iIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_52
    :try_start_52
    iget-object v5, p0, mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 232
    .restart local v3    # "info":Landroid/content/ComponentName;
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string v5, "META_KEY="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_58

    .line 237
    .end local v3    # "info":Landroid/content/ComponentName;
    :cond_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_52 .. :try_end_7a} :catchall_4f

    .line 238
    return-void
.end method

.method public getCurrentTopActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, mTopActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isMetaKeyEventRequested()Z
    .registers 4

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-boolean v0, p0, mMetaKeyPass:Z

    if-eqz v0, :cond_27

    .line 158
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "SystemKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMetaKeyEventRequested() : MetaKey is blocked by componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_24
    const/4 v0, 0x1

    monitor-exit p0

    .line 161
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_26

    .line 163
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 152
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .registers 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 136
    monitor-enter p0

    .line 137
    :try_start_2
    iget-object v1, p0, mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, p1, v1}, isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 138
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "SystemKeyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSystemKeyEventRequested() : keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is blocked by mTopActivity componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_33
    monitor-exit p0

    .line 144
    :goto_34
    return v0

    .line 140
    :cond_35
    iget-object v1, p0, mFocusedWindow:Landroid/content/ComponentName;

    invoke-virtual {p0, p1, v1}, isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 141
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_66

    const-string v1, "SystemKeyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSystemKeyEventRequested() : keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is blocked by mFocusedWindow componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_66
    monitor-exit p0

    goto :goto_34

    .line 146
    :catchall_68
    move-exception v0

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_2 .. :try_end_6a} :catchall_68

    throw v0

    .line 144
    :cond_6b
    const/4 v0, 0x0

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_68

    goto :goto_34
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 123
    monitor-enter p0

    .line 124
    if-nez p2, :cond_6

    .line 125
    :try_start_4
    monitor-exit p0

    .line 131
    :goto_5
    return v1

    .line 127
    :cond_6
    iget-object v2, p0, mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 128
    .local v0, "components":Ljava/util/HashSet;
    if-eqz v0, :cond_1d

    .line 129
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0

    goto :goto_5

    .line 132
    .end local v0    # "components":Ljava/util/HashSet;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1

    .line 131
    .restart local v0    # "components":Ljava/util/HashSet;
    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    goto :goto_5
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "request"    # Z

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    if-eqz p2, :cond_19

    .line 100
    :try_start_3
    iget-object v0, p0, mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_8
    iget-object v0, p0, mTopActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    iget-object v0, p0, mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 106
    invoke-virtual {p0, p1}, updateTopActivity(Landroid/content/ComponentName;)V

    .line 108
    :cond_17
    monitor-exit p0

    .line 109
    return-void

    .line 102
    :cond_19
    iget-object v0, p0, mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 108
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 79
    const/16 v1, 0x1a

    if-eq p1, v1, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_14

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_14

    const/4 v1, 0x6

    if-eq p1, v1, :cond_14

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_14

    .line 80
    const/4 v1, 0x0

    .line 91
    :goto_13
    return v1

    .line 83
    :cond_14
    monitor-enter p0

    .line 84
    if-eqz p3, :cond_2c

    .line 85
    :try_start_17
    iget-object v1, p0, mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 86
    .local v0, "components":Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_26
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_13

    .line 92
    .end local v0    # "components":Ljava/util/HashSet;
    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_29

    throw v1

    .line 88
    :cond_2c
    :try_start_2c
    iget-object v1, p0, mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 89
    .restart local v0    # "components":Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_29

    goto :goto_26
.end method

.method public updateFocusedWindow(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :try_start_1
    iput-object p1, p0, mFocusedWindow:Landroid/content/ComponentName;

    .line 191
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 172
    monitor-enter p0

    .line 173
    :try_start_1
    iput-object p1, p0, mTopActivity:Landroid/content/ComponentName;

    .line 175
    iget-object v0, p0, mMetaKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, mMetaKeyPass:Z

    .line 178
    const-string v0, "/sys/class/sec/sec_key/reject_key_comb"

    const-string v1, "ENABLE"

    invoke-direct {p0, v0, v1}, sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    :cond_15
    :goto_15
    monitor-exit p0

    .line 185
    return-void

    .line 179
    :cond_17
    iget-boolean v0, p0, mMetaKeyPass:Z

    if-eqz v0, :cond_15

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, mMetaKeyPass:Z

    .line 182
    const-string v0, "/sys/class/sec/sec_key/reject_key_comb"

    const-string v1, "DISABLE"

    invoke-direct {p0, v0, v1}, sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_15

    .line 184
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_26

    throw v0
.end method

.class public Landroid/renderscript/FileA3D$IndexEntry;
.super Ljava/lang/Object;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexEntry"
.end annotation


# instance fields
.field mEntryType:Landroid/renderscript/FileA3D$EntryType;

.field mID:J

.field mIndex:I

.field mLoadedObj:Landroid/renderscript/BaseObj;

.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V
    .registers 8
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "id"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "type"    # Landroid/renderscript/FileA3D$EntryType;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, mRS:Landroid/renderscript/RenderScript;

    .line 159
    iput p2, p0, mIndex:I

    .line 160
    iput-wide p3, p0, mID:J

    .line 161
    iput-object p5, p0, mName:Ljava/lang/String;

    .line 162
    iput-object p6, p0, mEntryType:Landroid/renderscript/FileA3D$EntryType;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, mLoadedObj:Landroid/renderscript/BaseObj;

    .line 164
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;
    .registers 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "entry"    # Landroid/renderscript/FileA3D$IndexEntry;

    .prologue
    const/4 v2, 0x0

    .line 130
    const-class v3, Landroid/renderscript/FileA3D$IndexEntry;

    monitor-enter v3

    :try_start_4
    iget-object v4, p1, mLoadedObj:Landroid/renderscript/BaseObj;

    if-eqz v4, :cond_c

    .line 131
    iget-object v2, p1, mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_35

    .line 154
    :cond_a
    :goto_a
    monitor-exit v3

    return-object v2

    .line 135
    :cond_c
    :try_start_c
    iget-object v4, p1, mEntryType:Landroid/renderscript/FileA3D$EntryType;

    sget-object v5, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    if-eq v4, v5, :cond_a

    .line 139
    iget-wide v4, p1, mID:J

    iget v6, p1, mIndex:I

    invoke-virtual {p0, v4, v5, v6}, Landroid/renderscript/RenderScript;->nFileA3DGetEntryByIndex(JI)J

    move-result-wide v0

    .line 140
    .local v0, "objectID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_a

    .line 144
    sget-object v2, Landroid/renderscript/FileA3D$1;->$SwitchMap$android$renderscript$FileA3D$EntryType:[I

    iget-object v4, p1, mEntryType:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v4}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_48

    .line 150
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Unrecognized object type in file."

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_35

    .line 130
    .end local v0    # "objectID":J
    :catchall_35
    move-exception v2

    monitor-exit v3

    throw v2

    .line 146
    .restart local v0    # "objectID":J
    :pswitch_38
    :try_start_38
    new-instance v2, Landroid/renderscript/Mesh;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p1, mLoadedObj:Landroid/renderscript/BaseObj;

    .line 153
    iget-object v2, p1, mLoadedObj:Landroid/renderscript/BaseObj;

    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 154
    iget-object v2, p1, mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_35

    goto :goto_a

    .line 144
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public getEntryType()Landroid/renderscript/FileA3D$EntryType;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, mEntryType:Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public getMesh()Landroid/renderscript/Mesh;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, getObject()Landroid/renderscript/BaseObj;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/renderscript/BaseObj;
    .registers 3

    .prologue
    .line 113
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 114
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1, p0}, internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;

    move-result-object v0

    .line 115
    .local v0, "obj":Landroid/renderscript/BaseObj;
    return-object v0
.end method

.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "([^,]+)(,[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, MODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 12
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 94
    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOverlays:Ljava/util/ArrayList;

    .line 89
    const-string v0, ""

    iput-object v0, p0, mCurrentOverlaySetting:Ljava/lang/String;

    .line 95
    iput-object p5, p0, mUiHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .prologue
    .line 69
    invoke-direct {p0}, updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/OverlayDisplayAdapter;

    .prologue
    .line 69
    iget-object v0, p0, mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .registers 2
    .param p0, "overlayNumber"    # I

    .prologue
    .line 209
    packed-switch p0, :pswitch_data_10

    .line 218
    const/16 v0, 0x53

    :goto_5
    return v0

    .line 211
    :pswitch_6
    const/16 v0, 0x33

    goto :goto_5

    .line 213
    :pswitch_9
    const/16 v0, 0x55

    goto :goto_5

    .line 215
    :pswitch_c
    const/16 v0, 0x35

    goto :goto_5

    .line 209
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private updateOverlayDisplayDevices()V
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 132
    :try_start_5
    invoke-direct {p0}, updateOverlayDisplayDevicesLocked()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .registers 31

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "overlay_display_devices"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 139
    .local v25, "value":Ljava/lang/String;
    if-nez v25, :cond_13

    .line 140
    const-string v25, ""

    .line 143
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentOverlaySetting:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 206
    :cond_1f
    :goto_1f
    return-void

    .line 146
    :cond_20
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentOverlaySetting:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    .line 149
    const-string v2, "OverlayDisplayAdapter"

    const-string v3, "Dismissing all overlay display devices."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 151
    .local v23, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_3f

    .line 153
    .end local v23    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 156
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_56
    const/4 v11, 0x0

    .line 157
    .local v11, "count":I
    const-string v2, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .local v17, "i$":I
    :goto_66
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1f

    aget-object v24, v9, v17

    .line 158
    .local v24, "part":Ljava/lang/String;
    sget-object v2, DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 159
    .local v13, "displayMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 160
    const/4 v2, 0x4

    if-lt v11, v2, :cond_9c

    .line 161
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Too many overlay display devices specified: "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 164
    :cond_9c
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    .line 165
    .local v22, "modeString":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "flagString":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    const-string v2, "\\|"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :goto_b8
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_144

    aget-object v20, v10, v16

    .line 168
    .local v20, "mode":Ljava/lang/String;
    sget-object v2, MODE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 169
    .local v21, "modeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v21 .. v21}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 171
    const/4 v2, 0x1

    :try_start_cf
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v26

    .line 172
    .local v26, "width":I
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    .line 173
    .local v15, "height":I
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    .line 174
    .local v12, "densityDpi":I
    const/16 v2, 0x64

    move/from16 v0, v26

    if-lt v0, v2, :cond_11e

    const/16 v2, 0x1000

    move/from16 v0, v26

    if-gt v0, v2, :cond_11e

    const/16 v2, 0x64

    if-lt v15, v2, :cond_11e

    const/16 v2, 0x1000

    if-gt v15, v2, :cond_11e

    const/16 v2, 0x78

    if-lt v12, v2, :cond_11e

    const/16 v2, 0x280

    if-gt v12, v2, :cond_11e

    .line 178
    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    move/from16 v0, v26

    invoke-direct {v2, v0, v15, v12}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v12    # "densityDpi":I
    .end local v15    # "height":I
    .end local v26    # "width":I
    :cond_11b
    :goto_11b
    add-int/lit8 v16, v16, 0x1

    goto :goto_b8

    .line 181
    .restart local v12    # "densityDpi":I
    .restart local v15    # "height":I
    .restart local v26    # "width":I
    :cond_11e
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignoring out-of-range overlay display mode: "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_13a} :catch_13b

    goto :goto_11b

    .line 183
    .end local v12    # "densityDpi":I
    .end local v15    # "height":I
    .end local v26    # "width":I
    :catch_13b
    move-exception v2

    goto :goto_11b

    .line 185
    :cond_13d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11b

    goto :goto_11b

    .line 189
    .end local v20    # "mode":Ljava/lang/String;
    .end local v21    # "modeMatcher":Ljava/util/regex/Matcher;
    :cond_144
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d3

    .line 190
    add-int/lit8 v11, v11, 0x1

    move v8, v11

    .line 191
    .local v8, "number":I
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404d9

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "name":Ljava/lang/String;
    invoke-static {v8}, chooseOverlayGravity(I)I

    move-result v6

    .line 195
    .local v6, "gravity":I
    if-eqz v14, :cond_1d1

    const-string v2, ",secure"

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    const/4 v7, 0x1

    .line 197
    .local v7, "secure":Z
    :goto_17d
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Showing overlay display device #"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ": name="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v27, ", modes="

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, mOverlays:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v6    # "gravity":I
    .end local v7    # "secure":Z
    .end local v8    # "number":I
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "flagString":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "modeString":Ljava/lang/String;
    :goto_1cb
    add-int/lit8 v16, v17, 0x1

    .restart local v16    # "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto/16 :goto_66

    .line 195
    .end local v17    # "i$":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .restart local v6    # "gravity":I
    .restart local v8    # "number":I
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v14    # "flagString":Ljava/lang/String;
    .restart local v16    # "i$":I
    .restart local v19    # "len$":I
    .restart local v22    # "modeString":Ljava/lang/String;
    :cond_1d1
    const/4 v7, 0x0

    goto :goto_17d

    .line 204
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    .end local v6    # "gravity":I
    .end local v8    # "number":I
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v14    # "flagString":Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "modeString":Ljava/lang/String;
    :cond_1d3
    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Malformed overlay display devices setting: "

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cb
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentOverlaySetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOverlays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 105
    .local v1, "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_3f

    .line 107
    .end local v1    # "overlay":Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    :cond_4f
    return-void
.end method

.method public registerLocked()V
    .registers 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 113
    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

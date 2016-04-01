.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Landroid/view/accessibility/AccessibilityRecord;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final INVALID_POSITION:I = -0x1

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final MAX_TEXT_LENGTH:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final TYPE_THREE_TAP_GESTURE_END:I = 0x4000000

.field public static final TYPE_THREE_TAP_GESTURE_START:I = 0x2000000

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CLICKED:I = 0x1

.field public static final TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final TYPE_VIEW_FOCUSED:I = 0x8

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final TYPE_VIEW_SELECTED:I = 0x4

.field public static final TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800

.field public static final TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAction:I

.field mContentChangeTypes:I

.field private mEventTime:J

.field private mEventType:I

.field mMovementGranularity:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 761
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    .line 1467
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 776
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    .line 777
    return-void
.end method

.method public static eventTypeToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "eventType"    # I

    .prologue
    const/4 v4, 0x1

    .line 1257
    const/4 v3, -0x1

    if-ne p0, v3, :cond_7

    .line 1258
    const-string v3, "TYPES_ALL_MASK"

    .line 1461
    :goto_6
    return-object v3

    .line 1260
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1262
    .local v1, "eventTypeCount":I
    :goto_d
    if-eqz p0, :cond_1c5

    .line 1263
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v2, v4, v3

    .line 1264
    .local v2, "eventTypeFlag":I
    xor-int/lit8 v3, v2, -0x1

    and-int/2addr p0, v3

    .line 1265
    sparse-switch v2, :sswitch_data_1d8

    goto :goto_d

    .line 1267
    :sswitch_1c
    if-lez v1, :cond_23

    .line 1268
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :cond_23
    const-string v3, "TYPE_VIEW_CLICKED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    add-int/lit8 v1, v1, 0x1

    .line 1272
    goto :goto_d

    .line 1274
    :sswitch_2b
    if-lez v1, :cond_32

    .line 1275
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_32
    const-string v3, "TYPE_VIEW_LONG_CLICKED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    add-int/lit8 v1, v1, 0x1

    .line 1279
    goto :goto_d

    .line 1281
    :sswitch_3a
    if-lez v1, :cond_41

    .line 1282
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_41
    const-string v3, "TYPE_VIEW_SELECTED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    add-int/lit8 v1, v1, 0x1

    .line 1286
    goto :goto_d

    .line 1288
    :sswitch_49
    if-lez v1, :cond_50

    .line 1289
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_50
    const-string v3, "TYPE_VIEW_FOCUSED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    add-int/lit8 v1, v1, 0x1

    .line 1293
    goto :goto_d

    .line 1295
    :sswitch_58
    if-lez v1, :cond_5f

    .line 1296
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    :cond_5f
    const-string v3, "TYPE_VIEW_TEXT_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    add-int/lit8 v1, v1, 0x1

    .line 1300
    goto :goto_d

    .line 1302
    :sswitch_67
    if-lez v1, :cond_6e

    .line 1303
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    :cond_6e
    const-string v3, "TYPE_WINDOW_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    add-int/lit8 v1, v1, 0x1

    .line 1307
    goto :goto_d

    .line 1309
    :sswitch_76
    if-lez v1, :cond_7d

    .line 1310
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    :cond_7d
    const-string v3, "TYPE_VIEW_HOVER_ENTER"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    add-int/lit8 v1, v1, 0x1

    .line 1314
    goto :goto_d

    .line 1316
    :sswitch_85
    if-lez v1, :cond_8c

    .line 1317
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :cond_8c
    const-string v3, "TYPE_VIEW_HOVER_EXIT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    add-int/lit8 v1, v1, 0x1

    .line 1321
    goto/16 :goto_d

    .line 1323
    :sswitch_95
    if-lez v1, :cond_9c

    .line 1324
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    :cond_9c
    const-string v3, "TYPE_NOTIFICATION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    add-int/lit8 v1, v1, 0x1

    .line 1328
    goto/16 :goto_d

    .line 1330
    :sswitch_a5
    if-lez v1, :cond_ac

    .line 1331
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    :cond_ac
    const-string v3, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    add-int/lit8 v1, v1, 0x1

    .line 1335
    goto/16 :goto_d

    .line 1337
    :sswitch_b5
    if-lez v1, :cond_bc

    .line 1338
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    :cond_bc
    const-string v3, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    add-int/lit8 v1, v1, 0x1

    .line 1342
    goto/16 :goto_d

    .line 1344
    :sswitch_c5
    if-lez v1, :cond_cc

    .line 1345
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    :cond_cc
    const-string v3, "TYPE_WINDOW_CONTENT_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    add-int/lit8 v1, v1, 0x1

    .line 1349
    goto/16 :goto_d

    .line 1351
    :sswitch_d5
    if-lez v1, :cond_dc

    .line 1352
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_dc
    const-string v3, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    add-int/lit8 v1, v1, 0x1

    .line 1356
    goto/16 :goto_d

    .line 1358
    :sswitch_e5
    if-lez v1, :cond_ec

    .line 1359
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    :cond_ec
    const-string v3, "TYPE_VIEW_SCROLLED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    add-int/lit8 v1, v1, 0x1

    .line 1363
    goto/16 :goto_d

    .line 1365
    :sswitch_f5
    if-lez v1, :cond_fc

    .line 1366
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_fc
    const-string v3, "TYPE_ANNOUNCEMENT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    add-int/lit8 v1, v1, 0x1

    .line 1370
    goto/16 :goto_d

    .line 1372
    :sswitch_105
    if-lez v1, :cond_10c

    .line 1373
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_10c
    const-string v3, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    add-int/lit8 v1, v1, 0x1

    .line 1377
    goto/16 :goto_d

    .line 1379
    :sswitch_115
    if-lez v1, :cond_11c

    .line 1380
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    :cond_11c
    const-string v3, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    add-int/lit8 v1, v1, 0x1

    .line 1384
    goto/16 :goto_d

    .line 1386
    :sswitch_125
    if-lez v1, :cond_12c

    .line 1387
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_12c
    const-string v3, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    add-int/lit8 v1, v1, 0x1

    .line 1391
    goto/16 :goto_d

    .line 1393
    :sswitch_135
    if-lez v1, :cond_13c

    .line 1394
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_13c
    const-string v3, "TYPE_GESTURE_DETECTION_START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    add-int/lit8 v1, v1, 0x1

    .line 1398
    goto/16 :goto_d

    .line 1400
    :sswitch_145
    if-lez v1, :cond_14c

    .line 1401
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    :cond_14c
    const-string v3, "TYPE_GESTURE_DETECTION_END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    add-int/lit8 v1, v1, 0x1

    .line 1405
    goto/16 :goto_d

    .line 1407
    :sswitch_155
    if-lez v1, :cond_15c

    .line 1408
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    :cond_15c
    const-string v3, "TYPE_TOUCH_INTERACTION_START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    add-int/lit8 v1, v1, 0x1

    .line 1412
    goto/16 :goto_d

    .line 1414
    :sswitch_165
    if-lez v1, :cond_16c

    .line 1415
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    :cond_16c
    const-string v3, "TYPE_TOUCH_INTERACTION_END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    add-int/lit8 v1, v1, 0x1

    .line 1419
    goto/16 :goto_d

    .line 1421
    :sswitch_175
    if-lez v1, :cond_17c

    .line 1422
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    :cond_17c
    const-string v3, "TYPE_WINDOWS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    add-int/lit8 v1, v1, 0x1

    .line 1426
    goto/16 :goto_d

    .line 1428
    :sswitch_185
    if-lez v1, :cond_18c

    .line 1429
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :cond_18c
    const-string v3, "TYPE_VIEW_CONTEXT_CLICKED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    add-int/lit8 v1, v1, 0x1

    .line 1433
    goto/16 :goto_d

    .line 1435
    :sswitch_195
    if-lez v1, :cond_19c

    .line 1436
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1438
    :cond_19c
    const-string v3, "TYPE_ASSIST_READING_CONTEXT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    add-int/lit8 v1, v1, 0x1

    .line 1440
    goto/16 :goto_d

    .line 1442
    :sswitch_1a5
    if-lez v1, :cond_1ac

    .line 1443
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    :cond_1ac
    const-string v3, "TYPE_THREE_TAP_GESTURE_START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    add-int/lit8 v1, v1, 0x1

    .line 1447
    goto/16 :goto_d

    .line 1449
    :sswitch_1b5
    if-lez v1, :cond_1bc

    .line 1450
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    :cond_1bc
    const-string v3, "TYPE_THREE_TAP_GESTURE_END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d

    .line 1457
    .end local v2    # "eventTypeFlag":I
    :cond_1c5
    if-le v1, v4, :cond_1d2

    .line 1458
    const/4 v3, 0x0

    const/16 v4, 0x5b

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1459
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1461
    :cond_1d2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 1265
    :sswitch_data_1d8
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_2b
        0x4 -> :sswitch_3a
        0x8 -> :sswitch_49
        0x10 -> :sswitch_58
        0x20 -> :sswitch_67
        0x40 -> :sswitch_95
        0x80 -> :sswitch_76
        0x100 -> :sswitch_85
        0x200 -> :sswitch_a5
        0x400 -> :sswitch_b5
        0x800 -> :sswitch_c5
        0x1000 -> :sswitch_e5
        0x2000 -> :sswitch_d5
        0x4000 -> :sswitch_f5
        0x8000 -> :sswitch_105
        0x10000 -> :sswitch_115
        0x20000 -> :sswitch_125
        0x40000 -> :sswitch_135
        0x80000 -> :sswitch_145
        0x100000 -> :sswitch_155
        0x200000 -> :sswitch_165
        0x400000 -> :sswitch_175
        0x800000 -> :sswitch_185
        0x1000000 -> :sswitch_195
        0x2000000 -> :sswitch_1a5
        0x4000000 -> :sswitch_1b5
    .end sparse-switch
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityEvent;
    .registers 2

    .prologue
    .line 1041
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 1042
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_b

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_a
    return-object v0

    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_b
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {v0}, <init>()V

    goto :goto_a
.end method

.method public static obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 2
    .param p0, "eventType"    # I

    .prologue
    .line 1004
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1005
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, setEventType(I)V

    .line 1006
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .registers 7
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1018
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1019
    .local v0, "eventClone":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, init(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1021
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    if-eqz v5, :cond_2f

    .line 1022
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1023
    .local v4, "recordCount":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, mRecords:Ljava/util/ArrayList;

    .line 1024
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v4, :cond_2f

    .line 1025
    iget-object v5, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    .line 1026
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v3

    .line 1027
    .local v3, "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v5, v0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1031
    .end local v1    # "i":I
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v3    # "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    .end local v4    # "recordCount":I
    :cond_2f
    return-object v0
.end method

.method private readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V
    .registers 6
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 1119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 1120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 1121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 1126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 1127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 1128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 1129
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 1130
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 1131
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 1132
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 1133
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 1135
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_85

    move v0, v1

    :goto_82
    iput-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 1137
    return-void

    .line 1136
    :cond_85
    const/4 v0, 0x0

    goto :goto_82
.end method

.method private writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .prologue
    .line 1170
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1182
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1183
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-static {v0, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1184
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1185
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1186
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1189
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_6b

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_5f
    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1191
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    :goto_67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    return-void

    .line 1189
    :cond_6b
    const/4 v0, 0x0

    goto :goto_5f

    .line 1191
    :cond_6d
    const/4 v0, 0x0

    goto :goto_67
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
    .registers 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    .line 831
    invoke-virtual {p0}, enforceNotSealed()V

    .line 832
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRecords:Ljava/util/ArrayList;

    .line 835
    :cond_e
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    return-void
.end method

.method protected clear()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1066
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 1067
    iput v4, p0, mEventType:I

    .line 1068
    iput v4, p0, mMovementGranularity:I

    .line 1069
    iput v4, p0, mAction:I

    .line 1070
    iput v4, p0, mContentChangeTypes:I

    .line 1071
    const/4 v1, 0x0

    iput-object v1, p0, mPackageName:Ljava/lang/CharSequence;

    .line 1072
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mEventTime:J

    .line 1073
    iget-object v1, p0, mRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    .line 1074
    :goto_17
    iget-object v1, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1075
    iget-object v1, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    .line 1076
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    goto :goto_17

    .line 1079
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_2b
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .registers 2

    .prologue
    .line 993
    iget v0, p0, mAction:I

    return v0
.end method

.method public getContentChangeTypes()I
    .registers 2

    .prologue
    .line 874
    iget v0, p0, mContentChangeTypes:I

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 908
    iget-wide v0, p0, mEventTime:J

    return-wide v0
.end method

.method public getEventType()I
    .registers 2

    .prologue
    .line 857
    iget v0, p0, mEventType:I

    return v0
.end method

.method public getMovementGranularity()I
    .registers 2

    .prologue
    .line 962
    iget v0, p0, mMovementGranularity:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 929
    iget-object v0, p0, mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 845
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_23

    .line 846
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_23
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    return-object v0
.end method

.method public getRecordCount()I
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method init(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 785
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 786
    iget v0, p1, mEventType:I

    iput v0, p0, mEventType:I

    .line 787
    iget v0, p1, mMovementGranularity:I

    iput v0, p0, mMovementGranularity:I

    .line 788
    iget v0, p1, mAction:I

    iput v0, p0, mAction:I

    .line 789
    iget v0, p1, mContentChangeTypes:I

    iput v0, p0, mContentChangeTypes:I

    .line 790
    iget-wide v0, p1, mEventTime:J

    iput-wide v0, p0, mEventTime:J

    .line 791
    iget-object v0, p1, mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, mPackageName:Ljava/lang/CharSequence;

    .line 792
    return-void
.end method

.method public initFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v3, :cond_5d

    :goto_7
    iput-boolean v3, p0, mSealed:Z

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mEventType:I

    .line 1089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mMovementGranularity:I

    .line 1090
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mAction:I

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mContentChangeTypes:I

    .line 1092
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, p0, mPackageName:Ljava/lang/CharSequence;

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mEventTime:J

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mConnectionId:I

    .line 1095
    invoke-direct {p0, p0, p1}, readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1099
    .local v2, "recordCount":I
    if-lez v2, :cond_5f

    .line 1100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, mRecords:Ljava/util/ArrayList;

    .line 1101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    if-ge v0, v2, :cond_5f

    .line 1102
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    .line 1103
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v1, p1}, readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    .line 1104
    iget v3, p0, mConnectionId:I

    iput v3, v1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 1105
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 1087
    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_5d
    const/4 v3, 0x0

    goto :goto_7

    .line 1108
    .restart local v2    # "recordCount":I
    :cond_5f
    return-void
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 1055
    invoke-virtual {p0}, clear()V

    .line 1056
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1057
    return-void
.end method

.method public setAction(I)V
    .registers 2
    .param p1, "action"    # I

    .prologue
    .line 983
    invoke-virtual {p0}, enforceNotSealed()V

    .line 984
    iput p1, p0, mAction:I

    .line 985
    return-void
.end method

.method public setContentChangeTypes(I)V
    .registers 2
    .param p1, "changeTypes"    # I

    .prologue
    .line 886
    invoke-virtual {p0}, enforceNotSealed()V

    .line 887
    iput p1, p0, mContentChangeTypes:I

    .line 888
    return-void
.end method

.method public setEventTime(J)V
    .registers 4
    .param p1, "eventTime"    # J

    .prologue
    .line 919
    invoke-virtual {p0}, enforceNotSealed()V

    .line 920
    iput-wide p1, p0, mEventTime:J

    .line 921
    return-void
.end method

.method public setEventType(I)V
    .registers 2
    .param p1, "eventType"    # I

    .prologue
    .line 898
    invoke-virtual {p0}, enforceNotSealed()V

    .line 899
    iput p1, p0, mEventType:I

    .line 900
    return-void
.end method

.method public setMovementGranularity(I)V
    .registers 2
    .param p1, "granularity"    # I

    .prologue
    .line 952
    invoke-virtual {p0}, enforceNotSealed()V

    .line 953
    iput p1, p0, mMovementGranularity:I

    .line 954
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 940
    invoke-virtual {p0}, enforceNotSealed()V

    .line 941
    iput-object p1, p0, mPackageName:Ljava/lang/CharSequence;

    .line 942
    return-void
.end method

.method public setSealed(Z)V
    .registers 6
    .param p1, "sealed"    # Z

    .prologue
    .line 803
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 804
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    .line 805
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRecord;>;"
    if-eqz v3, :cond_1a

    .line 806
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 807
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_1a

    .line 808
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 809
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    .line 807
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 812
    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_1a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1204
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "EventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mEventType:I

    invoke-static {v2}, eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    const-string v1, "; EventTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1206
    const-string v1, "; PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1207
    const-string v1, "; MovementGranularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMovementGranularity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1208
    const-string v1, "; Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1209
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const-string v1, "; recordCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getRecordCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 1143
    invoke-virtual {p0}, isSealed()Z

    move-result v3

    if-eqz v3, :cond_49

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    iget v3, p0, mEventType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    iget v3, p0, mMovementGranularity:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    iget v3, p0, mAction:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    iget v3, p0, mContentChangeTypes:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    iget-object v3, p0, mPackageName:Ljava/lang/CharSequence;

    invoke-static {v3, p1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1149
    iget-wide v4, p0, mEventTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1150
    iget v3, p0, mConnectionId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    invoke-direct {p0, p0, p1, p2}, writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1154
    invoke-virtual {p0}, getRecordCount()I

    move-result v2

    .line 1155
    .local v2, "recordCount":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    if-ge v0, v2, :cond_4b

    .line 1157
    iget-object v3, p0, mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    .line 1158
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v1, p1, p2}, writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    .line 1156
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_49
    move v3, v4

    .line 1143
    goto :goto_8

    .line 1160
    .restart local v0    # "i":I
    .restart local v2    # "recordCount":I
    :cond_4b
    return-void
.end method

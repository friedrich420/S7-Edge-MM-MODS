.class public Lcom/android/server/policy/BurnInProtectionHelper;
.super Ljava/lang/Object;
.source "BurnInProtectionHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static final ACTION_BURN_IN_PROTECTION:Ljava/lang/String; = "android.internal.policy.action.BURN_IN_PROTECTION"

.field private static final BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

.field private static final BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

.field public static final BURN_IN_MAX_RADIUS_DEFAULT:I = -0x1

.field private static final BURN_IN_SHIFT_STEP:I = 0x2

.field private static final CENTERING_ANIMATION_DURATION_MS:J = 0x64L

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BurnInProtection"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBurnInProtectionActive:Z

.field private final mBurnInProtectionIntent:Landroid/app/PendingIntent;

.field private mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBurnInRadiusMaxSquared:I

.field private final mCenteringAnimator:Landroid/animation/ValueAnimator;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mFirstUpdate:Z

.field private mLastBurnInXOffset:I

.field private mLastBurnInYOffset:I

.field private final mMaxHorizontalBurnInOffset:I

.field private final mMaxVerticalBurnInOffset:I

.field private final mMinHorizontalBurnInOffset:I

.field private final mMinVerticalBurnInOffset:I

.field private mXOffsetDirection:I

.field private mYOffsetDirection:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 46
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minHorizontalOffset"    # I
    .param p3, "maxHorizontalOffset"    # I
    .param p4, "minVerticalOffset"    # I
    .param p5, "maxVerticalOffset"    # I
    .param p6, "maxOffsetRadius"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v5, p0, mLastBurnInXOffset:I

    .line 70
    iput v2, p0, mXOffsetDirection:I

    .line 71
    iput v5, p0, mLastBurnInYOffset:I

    .line 73
    iput v2, p0, mYOffsetDirection:I

    .line 80
    new-instance v2, Lcom/android/server/policy/BurnInProtectionHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/BurnInProtectionHelper$1;-><init>(Lcom/android/server/policy/BurnInProtectionHelper;)V

    iput-object v2, p0, mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput p2, p0, mMinHorizontalBurnInOffset:I

    .line 94
    iput p3, p0, mMaxHorizontalBurnInOffset:I

    .line 95
    iput p4, p0, mMinVerticalBurnInOffset:I

    .line 96
    iput p5, p0, mMaxVerticalBurnInOffset:I

    .line 97
    if-eq p6, v3, :cond_99

    .line 98
    mul-int v2, p6, p6

    iput v2, p0, mBurnInRadiusMaxSquared:I

    .line 103
    :goto_23
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 104
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 105
    iget-object v2, p0, mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.internal.policy.action.BURN_IN_PROTECTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.internal.policy.action.BURN_IN_PROTECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    const/high16 v2, 0x8000000

    invoke-static {p1, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, mBurnInProtectionIntent:Landroid/app/PendingIntent;

    .line 112
    const-string/jumbo v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 114
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, mDisplay:Landroid/view/Display;

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 117
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_9c

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    .line 118
    iget-object v2, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    iget-object v2, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object v2, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 121
    iget-object v2, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 122
    return-void

    .line 100
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_99
    iput v3, p0, mBurnInRadiusMaxSquared:I

    goto :goto_23

    .line 117
    :array_9c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/policy/BurnInProtectionHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/BurnInProtectionHelper;

    .prologue
    .line 39
    invoke-direct {p0}, updateBurnInProtection()V

    return-void
.end method

.method private adjustOffsets()V
    .registers 6

    .prologue
    .line 194
    :cond_0
    iget v2, p0, mXOffsetDirection:I

    mul-int/lit8 v0, v2, 0x2

    .line 195
    .local v0, "xChange":I
    iget v2, p0, mLastBurnInXOffset:I

    add-int/2addr v2, v0

    iput v2, p0, mLastBurnInXOffset:I

    .line 196
    iget v2, p0, mLastBurnInXOffset:I

    iget v3, p0, mMaxHorizontalBurnInOffset:I

    if-gt v2, v3, :cond_15

    iget v2, p0, mLastBurnInXOffset:I

    iget v3, p0, mMinHorizontalBurnInOffset:I

    if-ge v2, v3, :cond_40

    .line 199
    :cond_15
    iget v2, p0, mLastBurnInXOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, mLastBurnInXOffset:I

    .line 201
    iget v2, p0, mXOffsetDirection:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, p0, mXOffsetDirection:I

    .line 203
    iget v2, p0, mYOffsetDirection:I

    mul-int/lit8 v1, v2, 0x2

    .line 204
    .local v1, "yChange":I
    iget v2, p0, mLastBurnInYOffset:I

    add-int/2addr v2, v1

    iput v2, p0, mLastBurnInYOffset:I

    .line 205
    iget v2, p0, mLastBurnInYOffset:I

    iget v3, p0, mMaxVerticalBurnInOffset:I

    if-gt v2, v3, :cond_35

    iget v2, p0, mLastBurnInYOffset:I

    iget v3, p0, mMinVerticalBurnInOffset:I

    if-ge v2, v3, :cond_40

    .line 208
    :cond_35
    iget v2, p0, mLastBurnInYOffset:I

    sub-int/2addr v2, v1

    iput v2, p0, mLastBurnInYOffset:I

    .line 210
    iget v2, p0, mYOffsetDirection:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, p0, mYOffsetDirection:I

    .line 215
    .end local v1    # "yChange":I
    :cond_40
    iget v2, p0, mBurnInRadiusMaxSquared:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    iget v2, p0, mLastBurnInXOffset:I

    iget v3, p0, mLastBurnInXOffset:I

    mul-int/2addr v2, v3

    iget v3, p0, mLastBurnInYOffset:I

    iget v4, p0, mLastBurnInYOffset:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, mBurnInRadiusMaxSquared:I

    if-gt v2, v3, :cond_0

    .line 217
    :cond_54
    return-void
.end method

.method private updateBurnInProtection()V
    .registers 13

    .prologue
    .line 134
    iget-boolean v8, p0, mBurnInProtectionActive:Z

    if-eqz v8, :cond_41

    .line 138
    iget-boolean v8, p0, mFirstUpdate:Z

    if-eqz v8, :cond_2e

    .line 139
    const/4 v8, 0x0

    iput-boolean v8, p0, mFirstUpdate:Z

    .line 149
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 150
    .local v6, "nowWall":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 152
    .local v4, "nowElapsed":J
    sget-wide v8, BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    add-long v2, v6, v8

    .line 154
    .local v2, "nextWall":J
    sget-wide v8, BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    rem-long v8, v2, v8

    sub-long v8, v2, v8

    sget-wide v10, BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    add-long v2, v8, v10

    .line 157
    sub-long v8, v2, v6

    add-long v0, v4, v8

    .line 163
    .local v0, "nextElapsed":J
    iget-object v8, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x3

    iget-object v10, p0, mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9, v0, v1, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 169
    .end local v0    # "nextElapsed":J
    .end local v2    # "nextWall":J
    .end local v4    # "nowElapsed":J
    .end local v6    # "nowWall":J
    :goto_2d
    return-void

    .line 141
    :cond_2e
    invoke-direct {p0}, adjustOffsets()V

    .line 142
    iget-object v8, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v9, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    iget v10, p0, mLastBurnInXOffset:I

    iget v11, p0, mLastBurnInYOffset:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    goto :goto_b

    .line 166
    :cond_41
    iget-object v8, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 167
    iget-object v8, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2d
.end method


# virtual methods
.method public cancelBurnInProtection()V
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, mBurnInProtectionActive:Z

    if-eqz v0, :cond_a

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, mBurnInProtectionActive:Z

    .line 174
    invoke-direct {p0}, updateBurnInProtection()V

    .line 176
    :cond_a
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BurnInProtection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mBurnInProtectionActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mBurnInProtectionActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHorizontalBurnInOffsetsBounds=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mMinHorizontalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mMaxHorizontalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mVerticalBurnInOffsetsBounds=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mMinVerticalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mMaxVerticalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mBurnInRadiusMaxSquared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mBurnInRadiusMaxSquared:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLastBurnInOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLastBurnInXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mLastBurnInYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOfsetChangeDirections=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mXOffsetDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mYOffsetDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 268
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_14

    iget-boolean v0, p0, mBurnInProtectionActive:Z

    if-nez v0, :cond_14

    .line 262
    iget-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 264
    :cond_14
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 276
    iget-boolean v1, p0, mBurnInProtectionActive:Z

    if-nez v1, :cond_23

    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 278
    .local v0, "value":F
    iget-object v1, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v3, p0, mLastBurnInXOffset:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, mLastBurnInYOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .line 281
    .end local v0    # "value":F
    :cond_23
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 236
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 244
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1d

    .line 245
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 247
    :cond_1a
    invoke-virtual {p0}, startBurnInProtection()V

    .line 252
    :cond_1d
    :goto_1d
    return-void

    .line 249
    :cond_1e
    invoke-virtual {p0}, cancelBurnInProtection()V

    goto :goto_1d
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 240
    return-void
.end method

.method public startBurnInProtection()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-boolean v0, p0, mBurnInProtectionActive:Z

    if-nez v0, :cond_11

    .line 126
    iput-boolean v1, p0, mBurnInProtectionActive:Z

    .line 127
    iput-boolean v1, p0, mFirstUpdate:Z

    .line 128
    iget-object v0, p0, mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 129
    invoke-direct {p0}, updateBurnInProtection()V

    .line 131
    :cond_11
    return-void
.end method

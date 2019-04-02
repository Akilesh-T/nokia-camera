.class public Landroid/util/CameraPerformanceTracker;
.super Ljava/lang/Object;
.source "CameraPerformanceTracker.java"


# static fields
.field public static final ACTIVITY_PAUSE:I = 0x1

.field public static final ACTIVITY_RESUME:I = 0x2

.field public static final ACTIVITY_START:I = 0x0

.field public static final CAMERA_SWITCH_START:I = 0x4

.field public static final DEBUG:Z

.field public static final FIRST_PREVIEW_FRAME:I = 0x5

.field public static final MODE_SWITCH_START:I = 0x3

.field public static final PANO_CAPTURE_STARTED:I = 0xa

.field public static final PANO_CAPTURE_STOPED:I = 0xb

.field public static final SHUTTER_LAG_START:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CameraPerformanceTracker"

.field public static final THUMBNAIL_SHOW:I = 0x7

.field public static final UNSET:I = -0x1

.field public static final VIDEO_RECORD_STARTED:I = 0x8

.field public static final VIDEO_RECORD_STOPED:I = 0x9

.field private static sInstance:Landroid/util/CameraPerformanceTracker;


# instance fields
.field private mAppResumeTime:J

.field private mAppStartTime:J

.field private mCameraSwitchDuration:J

.field private mCameraSwitchStartTime:J

.field private mFirstPreviewFrameLatencyColdStart:J

.field private mFirstPreviewFrameLatencyWarmStart:J

.field private mModeSwitchDuration:J

.field private mModeSwitchStartTime:J

.field private mShutterLagDuration:J

.field private mShutterLagStartTime:J

.field private mStartPanoLagDuration:J

.field private mStartRecordLagDuration:J

.field private mStopPanoLagDuration:J

.field private mStopRecordLagDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "persist.camera.kpi_debug"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/CameraPerformanceTracker;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mAppStartTime:J

    .line 50
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mAppResumeTime:J

    .line 51
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mModeSwitchStartTime:J

    .line 52
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mCameraSwitchStartTime:J

    .line 53
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    .line 56
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyColdStart:J

    .line 57
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyWarmStart:J

    .line 59
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mModeSwitchDuration:J

    .line 60
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mCameraSwitchDuration:J

    .line 61
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mShutterLagDuration:J

    .line 62
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mStartRecordLagDuration:J

    .line 63
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mStopRecordLagDuration:J

    .line 64
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mStartPanoLagDuration:J

    .line 65
    iput-wide v0, p0, Landroid/util/CameraPerformanceTracker;->mStopPanoLagDuration:J

    .line 70
    return-void
.end method

.method public static getCameraSwitchDuration()J
    .locals 2

    .prologue
    .line 241
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    if-nez v0, :cond_0

    .line 242
    const-wide/16 v0, -0x1

    .line 244
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v0, v0, Landroid/util/CameraPerformanceTracker;->mCameraSwitchDuration:J

    goto :goto_0
.end method

.method public static getColdStartLatency()J
    .locals 2

    .prologue
    .line 206
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    if-nez v0, :cond_0

    .line 207
    const-wide/16 v0, -0x1

    .line 209
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v0, v0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyColdStart:J

    goto :goto_0
.end method

.method public static getModeSwitchDuration()J
    .locals 2

    .prologue
    .line 234
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    if-nez v0, :cond_0

    .line 235
    const-wide/16 v0, -0x1

    .line 237
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v0, v0, Landroid/util/CameraPerformanceTracker;->mModeSwitchDuration:J

    goto :goto_0
.end method

.method public static getWarmStartLatency()J
    .locals 2

    .prologue
    .line 220
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    if-nez v0, :cond_0

    .line 221
    const-wide/16 v0, -0x1

    .line 223
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v0, v0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyWarmStart:J

    goto :goto_0
.end method

.method public static onEvent(I)V
    .locals 8
    .param p0, "eventType"    # I

    .prologue
    const-wide/16 v6, -0x1

    .line 80
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    if-nez v2, :cond_0

    .line 81
    new-instance v2, Landroid/util/CameraPerformanceTracker;

    invoke-direct {v2}, Landroid/util/CameraPerformanceTracker;-><init>()V

    sput-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    .line 83
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 84
    .local v0, "currentTime":J
    packed-switch p0, :pswitch_data_0

    .line 161
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/util/CameraPerformanceTracker;->printLog(I)V

    .line 163
    return-void

    .line 86
    :pswitch_0
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v0, v2, Landroid/util/CameraPerformanceTracker;->mAppStartTime:J

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyWarmStart:J

    goto :goto_0

    .line 92
    :pswitch_2
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v0, v2, Landroid/util/CameraPerformanceTracker;->mAppResumeTime:J

    goto :goto_0

    .line 95
    :pswitch_3
    const-string v2, "CameraPerformanceTracker"

    const-string v3, "First preview frame received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyColdStart:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 98
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mAppStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyColdStart:J

    .line 106
    :cond_2
    :goto_1
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mModeSwitchStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 107
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mModeSwitchStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mModeSwitchDuration:J

    .line 108
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mModeSwitchStartTime:J

    .line 110
    :cond_3
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mCameraSwitchStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 111
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mCameraSwitchStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mCameraSwitchDuration:J

    .line 112
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mCameraSwitchStartTime:J

    goto :goto_0

    .line 100
    :cond_4
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyWarmStart:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 102
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mAppResumeTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyWarmStart:J

    goto :goto_1

    .line 116
    :pswitch_4
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mCameraSwitchStartTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 117
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v0, v2, Landroid/util/CameraPerformanceTracker;->mModeSwitchStartTime:J

    .line 118
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mModeSwitchStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mModeSwitchDuration:J

    goto/16 :goto_0

    .line 122
    :pswitch_5
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v0, v2, Landroid/util/CameraPerformanceTracker;->mCameraSwitchStartTime:J

    .line 123
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mCameraSwitchStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mCameraSwitchDuration:J

    goto/16 :goto_0

    .line 126
    :pswitch_6
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v0, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    goto/16 :goto_0

    .line 129
    :pswitch_7
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 130
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagDuration:J

    .line 131
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    goto/16 :goto_0

    .line 135
    :pswitch_8
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 136
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mStartRecordLagDuration:J

    .line 137
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    goto/16 :goto_0

    .line 141
    :pswitch_9
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 142
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mStopRecordLagDuration:J

    .line 143
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    goto/16 :goto_0

    .line 147
    :pswitch_a
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 148
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mStartPanoLagDuration:J

    .line 149
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    goto/16 :goto_0

    .line 153
    :pswitch_b
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v2, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 154
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    sget-object v3, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v3, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Landroid/util/CameraPerformanceTracker;->mStopPanoLagDuration:J

    .line 155
    sget-object v2, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iput-wide v6, v2, Landroid/util/CameraPerformanceTracker;->mShutterLagStartTime:J

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static printLog(I)V
    .locals 8
    .param p0, "eventType"    # I

    .prologue
    const-wide/16 v6, -0x1

    .line 166
    sget-boolean v0, Landroid/util/CameraPerformanceTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 167
    packed-switch p0, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 169
    :pswitch_1
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mode switch duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mModeSwitchDuration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const-string v0, "UNSET"

    .line 170
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera switch duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mCameraSwitchDuration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    const-string v0, "UNSET"

    .line 172
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cold start latency: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyColdStart:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    const-string v0, "UNSET"

    .line 174
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warm start latency: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyWarmStart:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    const-string v0, "UNSET"

    .line 176
    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    :cond_1
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mModeSwitchDuration:J

    .line 170
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 171
    :cond_2
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mCameraSwitchDuration:J

    .line 172
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2

    .line 173
    :cond_3
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyColdStart:J

    .line 174
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    .line 175
    :cond_4
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mFirstPreviewFrameLatencyWarmStart:J

    .line 176
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 179
    :pswitch_2
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutter lag duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mShutterLagDuration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    const-string v0, "UNSET"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mShutterLagDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_5

    .line 182
    :pswitch_3
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start record lag duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStartRecordLagDuration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    const-string v0, "UNSET"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStartRecordLagDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_6

    .line 185
    :pswitch_4
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Record lag duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStopRecordLagDuration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_7

    const-string v0, "UNSET"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStopRecordLagDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7

    .line 188
    :pswitch_5
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Panorama lag duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStartPanoLagDuration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    const-string v0, "UNSET"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStartPanoLagDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_8

    .line 191
    :pswitch_6
    const-string v1, "CameraPerformanceTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Panorama lag duration: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStopPanoLagDuration:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_9

    const-string v0, "UNSET"

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    sget-object v0, Landroid/util/CameraPerformanceTracker;->sInstance:Landroid/util/CameraPerformanceTracker;

    iget-wide v4, v0, Landroid/util/CameraPerformanceTracker;->mStopPanoLagDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

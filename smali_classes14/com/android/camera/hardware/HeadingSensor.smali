.class public Lcom/android/camera/hardware/HeadingSensor;
.super Ljava/lang/Object;
.source "HeadingSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;
    }
.end annotation


# static fields
.field public static final INVALID_HEADING:I = -0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mAccelerometerSensor:Landroid/hardware/Sensor;

.field private final mGData:[F

.field private mHeading:I

.field private mListener:Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;

.field private final mMData:[F

.field private final mMagneticSensor:Landroid/hardware/Sensor;

.field private final mRotationMatrix:[F

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "HeadingSensor"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/hardware/HeadingSensor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    const/4 v1, 0x3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mHeading:I

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mGData:[F

    .line 48
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mMData:[F

    .line 50
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mRotationMatrix:[F

    .line 61
    iput-object p1, p0, Lcom/android/camera/hardware/HeadingSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 63
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 64
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 82
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/hardware/HeadingSensor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mMagneticSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/hardware/HeadingSensor;->mMagneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 90
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/hardware/HeadingSensor;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mMagneticSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/hardware/HeadingSensor;->mMagneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 103
    :cond_1
    return-void
.end method

.method public getCurrentHeading()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mHeading:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 136
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 108
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 110
    .local v3, "type":I
    if-ne v3, v6, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mGData:[F

    .line 118
    .local v0, "data":[F
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 119
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "data":[F
    .end local v1    # "i":I
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mMData:[F

    .restart local v0    # "data":[F
    goto :goto_0

    .line 115
    .end local v0    # "data":[F
    :cond_1
    sget-object v4, Lcom/android/camera/hardware/HeadingSensor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Unexpected sensor type %s"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    :cond_2
    :goto_2
    return-void

    .line 121
    .restart local v0    # "data":[F
    .restart local v1    # "i":I
    :cond_3
    new-array v2, v5, [F

    .line 122
    .local v2, "orientation":[F
    iget-object v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mRotationMatrix:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/hardware/HeadingSensor;->mGData:[F

    iget-object v7, p0, Lcom/android/camera/hardware/HeadingSensor;->mMData:[F

    invoke-static {v4, v5, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 123
    iget-object v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mRotationMatrix:[F

    invoke-static {v4, v2}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 124
    aget v4, v2, v8

    const/high16 v5, 0x43340000    # 180.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v4, v4

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mHeading:I

    .line 126
    iget v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mHeading:I

    if-gez v4, :cond_4

    .line 127
    iget v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mHeading:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mHeading:I

    .line 130
    :cond_4
    iget-object v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mListener:Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/android/camera/hardware/HeadingSensor;->mListener:Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;

    iget v5, p0, Lcom/android/camera/hardware/HeadingSensor;->mHeading:I

    invoke-interface {v4, v5}, Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;->onHeadingValueChanged(I)V

    goto :goto_2
.end method

.method public registerListener(Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/hardware/HeadingSensor;->mListener:Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;

    .line 140
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/hardware/HeadingSensor;->mListener:Lcom/android/camera/hardware/HeadingSensor$HeadingSensorListener;

    .line 144
    return-void
.end method

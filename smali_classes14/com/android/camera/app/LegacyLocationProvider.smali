.class public Lcom/android/camera/app/LegacyLocationProvider;
.super Ljava/lang/Object;
.source "LegacyLocationProvider.java"

# interfaces
.implements Lcom/android/camera/app/LocationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/LegacyLocationProvider$LocationListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRecordLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LcyLocProvider"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;-><init>(Lcom/android/camera/app/LegacyLocationProvider;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;-><init>(Lcom/android/camera/app/LegacyLocationProvider;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    .line 43
    iput-object p1, p0, Lcom/android/camera/app/LegacyLocationProvider;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/LegacyLocationProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/app/LegacyLocationProvider;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/app/LegacyLocationProvider;->stopReceivingLocationUpdates()V

    return-void
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 83
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "starting location updates"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/AndroidServices;->provideLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    :goto_1
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void

    .line 94
    :catch_0
    move-exception v6

    .line 95
    .local v6, "ex":Ljava/lang/SecurityException;
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 97
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v6    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 106
    .local v6, "ex":Ljava/lang/SecurityException;
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 107
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 108
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 115
    sget-object v2, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "stopping location updates"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 124
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "disconnect"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-boolean v3, p0, Lcom/android/camera/app/LegacyLocationProvider;->mRecordLocation:Z

    if-nez v3, :cond_1

    move-object v1, v2

    .line 60
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 54
    iget-object v3, p0, Lcom/android/camera/app/LegacyLocationProvider;->mLocationListeners:[Lcom/android/camera/app/LegacyLocationProvider$LocationListener;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 55
    .local v1, "l":Landroid/location/Location;
    if-nez v1, :cond_0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    .end local v1    # "l":Landroid/location/Location;
    :cond_2
    sget-object v3, Lcom/android/camera/app/LegacyLocationProvider;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "No location received yet."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v1, v2

    .line 60
    goto :goto_0
.end method

.method public recordLocation(Z)V
    .locals 1
    .param p1, "recordLocation"    # Z

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/app/LegacyLocationProvider;->mRecordLocation:Z

    if-eq v0, p1, :cond_0

    .line 66
    iput-boolean p1, p0, Lcom/android/camera/app/LegacyLocationProvider;->mRecordLocation:Z

    .line 67
    if-eqz p1, :cond_1

    .line 68
    invoke-direct {p0}, Lcom/android/camera/app/LegacyLocationProvider;->startReceivingLocationUpdates()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/app/LegacyLocationProvider;->stopReceivingLocationUpdates()V

    goto :goto_0
.end method

.class Lcom/android/camera/app/LegacyLocationProvider$LocationListener;
.super Ljava/lang/Object;
.source "LegacyLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/LegacyLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/app/LegacyLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/LegacyLocationProvider;Ljava/lang/String;)V
    .locals 2
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->this$0:Lcom/android/camera/app/LegacyLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mValid:Z

    .line 135
    iput-object p2, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mProvider:Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 137
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    const-wide/16 v2, 0x0

    .line 141
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mValid:Z

    if-nez v0, :cond_1

    .line 147
    invoke-static {}, Lcom/android/camera/app/LegacyLocationProvider;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Got first location."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mValid:Z

    .line 151
    iget-object v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->this$0:Lcom/android/camera/app/LegacyLocationProvider;

    invoke-static {v0}, Lcom/android/camera/app/LegacyLocationProvider;->access$100(Lcom/android/camera/app/LegacyLocationProvider;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mValid:Z

    .line 161
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 156
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 166
    packed-switch p2, :pswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 169
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/LegacyLocationProvider$LocationListener;->mValid:Z

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

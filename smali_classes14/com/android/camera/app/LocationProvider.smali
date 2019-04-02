.class public interface abstract Lcom/android/camera/app/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/LocationProvider$OnConnectionFailedListener;
    }
.end annotation


# virtual methods
.method public abstract disconnect()V
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract recordLocation(Z)V
.end method

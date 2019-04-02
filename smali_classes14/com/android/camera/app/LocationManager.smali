.class public Lcom/android/camera/app/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# static fields
.field public static final LOCATION_AUTHORITY:Ljava/lang/String; = "com.android.gallery3d.provider.LocationTagProvider"

.field public static final LOCATION_FIELD:Ljava/lang/String; = "camera_location_tag"

.field public static final LOCATION_TABLE_NAME:Ljava/lang/String; = "location_tag"

.field public static final LOCTAION_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field mLocationProvider:Lcom/android/camera/app/LocationProvider;

.field private mRecordLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LocationManager"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/LocationManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 34
    const-string v0, "content://com.android.gallery3d.provider.LocationTagProvider/location_tag"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/app/LocationManager;->LOCTAION_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v1, Lcom/android/camera/app/LocationManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Using legacy location provider."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/android/camera/app/LegacyLocationProvider;

    invoke-direct {v0, p1}, Lcom/android/camera/app/LegacyLocationProvider;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "llp":Lcom/android/camera/app/LegacyLocationProvider;
    iput-object v0, p0, Lcom/android/camera/app/LocationManager;->mLocationProvider:Lcom/android/camera/app/LocationProvider;

    .line 43
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/app/LocationManager;->mLocationProvider:Lcom/android/camera/app/LocationProvider;

    invoke-interface {v0}, Lcom/android/camera/app/LocationProvider;->disconnect()V

    .line 66
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/app/LocationManager;->mLocationProvider:Lcom/android/camera/app/LocationProvider;

    invoke-interface {v0}, Lcom/android/camera/app/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public recordLocation(Z)V
    .locals 2
    .param p1, "recordLocation"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/camera/app/LocationManager;->mRecordLocation:Z

    .line 50
    iget-object v0, p0, Lcom/android/camera/app/LocationManager;->mLocationProvider:Lcom/android/camera/app/LocationProvider;

    iget-boolean v1, p0, Lcom/android/camera/app/LocationManager;->mRecordLocation:Z

    invoke-interface {v0, v1}, Lcom/android/camera/app/LocationProvider;->recordLocation(Z)V

    .line 51
    return-void
.end method

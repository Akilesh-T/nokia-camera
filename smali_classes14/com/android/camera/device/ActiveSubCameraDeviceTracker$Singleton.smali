.class Lcom/android/camera/device/ActiveSubCameraDeviceTracker$Singleton;
.super Ljava/lang/Object;
.source "ActiveSubCameraDeviceTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/device/ActiveSubCameraDeviceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    invoke-direct {v0}, Lcom/android/camera/device/ActiveSubCameraDeviceTracker;-><init>()V

    sput-object v0, Lcom/android/camera/device/ActiveSubCameraDeviceTracker$Singleton;->INSTANCE:Lcom/android/camera/device/ActiveSubCameraDeviceTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public abstract Lcom/android/camera/one/OneCamera$CaptureParameters;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptureParameters"
.end annotation


# instance fields
.field public final debugDataFolder:Ljava/io/File;

.field public final location:Landroid/location/Location;

.field public final orientation:I

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "orientation"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "debugDataFolder"    # Ljava/io/File;

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/android/camera/one/OneCamera$CaptureParameters;->title:Ljava/lang/String;

    .line 315
    iput p2, p0, Lcom/android/camera/one/OneCamera$CaptureParameters;->orientation:I

    .line 316
    iput-object p3, p0, Lcom/android/camera/one/OneCamera$CaptureParameters;->location:Landroid/location/Location;

    .line 317
    iput-object p4, p0, Lcom/android/camera/one/OneCamera$CaptureParameters;->debugDataFolder:Ljava/io/File;

    .line 318
    return-void
.end method

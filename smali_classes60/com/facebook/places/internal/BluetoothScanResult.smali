.class public Lcom/facebook/places/internal/BluetoothScanResult;
.super Ljava/lang/Object;
.source "BluetoothScanResult.java"


# instance fields
.field public payload:Ljava/lang/String;

.field public rssi:I

.field public timestampNanos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "rssi"    # I
    .param p3, "timestampNanos"    # J

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/places/internal/BluetoothScanResult;->payload:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/facebook/places/internal/BluetoothScanResult;->rssi:I

    .line 63
    iput-wide p3, p0, Lcom/facebook/places/internal/BluetoothScanResult;->timestampNanos:J

    .line 64
    return-void
.end method

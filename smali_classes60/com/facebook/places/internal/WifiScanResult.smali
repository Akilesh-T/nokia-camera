.class public Lcom/facebook/places/internal/WifiScanResult;
.super Ljava/lang/Object;
.source "WifiScanResult.java"


# instance fields
.field public bssid:Ljava/lang/String;

.field public frequency:I

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public timestampMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "rssi"    # I
    .param p4, "frequency"    # I
    .param p5, "timestampMs"    # J

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    .line 76
    iput p4, p0, Lcom/facebook/places/internal/WifiScanResult;->frequency:I

    .line 77
    iput-wide p5, p0, Lcom/facebook/places/internal/WifiScanResult;->timestampMs:J

    .line 78
    return-void
.end method

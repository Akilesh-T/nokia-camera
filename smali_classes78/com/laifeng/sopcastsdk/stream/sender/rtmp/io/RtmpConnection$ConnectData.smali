.class public Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection$ConnectData;
.super Ljava/lang/Object;
.source "RtmpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/stream/sender/rtmp/io/RtmpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectData"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field public port:I

.field public streamName:Ljava/lang/String;

.field public swfUrl:Ljava/lang/String;

.field public tcUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

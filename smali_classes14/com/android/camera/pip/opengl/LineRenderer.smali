.class public Lcom/android/camera/pip/opengl/LineRenderer;
.super Ljava/lang/Object;
.source "LineRenderer.java"


# static fields
.field protected static DRAW_ORDER:[S

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected ColorHandle:I

.field private final FragmentShaderCode:Ljava/lang/String;

.field protected GlProgram:I

.field protected MVPMatrixHandle:I

.field protected PositionHandle:I

.field private final VertexShaderCode:Ljava/lang/String;

.field color:[F

.field protected mDrawListBuffer:Ljava/nio/ShortBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LineRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/LineRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/LineRenderer;->DRAW_ORDER:[S

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x2s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v3, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;void main() {  gl_Position = uMVPMatrix * vPosition;}"

    iput-object v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->VertexShaderCode:Ljava/lang/String;

    .line 28
    const-string v3, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    iput-object v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->FragmentShaderCode:Ljava/lang/String;

    .line 41
    const/4 v3, 0x4

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->color:[F

    .line 47
    const v3, 0x8b31

    const-string v4, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;void main() {  gl_Position = uMVPMatrix * vPosition;}"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/pip/opengl/LineRenderer;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 48
    .local v2, "vertexShader":I
    const v3, 0x8b30

    const-string v4, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/pip/opengl/LineRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    .line 51
    iget v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 52
    iget v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 53
    iget v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 55
    sget-object v3, Lcom/android/camera/pip/opengl/LineRenderer;->DRAW_ORDER:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    .local v0, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    .line 58
    iget-object v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    sget-object v4, Lcom/android/camera/pip/opengl/LineRenderer;->DRAW_ORDER:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 59
    iget-object v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    return-void

    .line 41
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private draw(Ljava/nio/FloatBuffer;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7
    .param p1, "floatBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "mvpMatrix"    # [F
    .param p3, "mainBuffer"    # Ljava/nio/FloatBuffer;
    .param p4, "subBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 103
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 106
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->PositionHandle:I

    .line 109
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 112
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->PositionHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 115
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    const-string v1, "vColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->ColorHandle:I

    .line 118
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->ColorHandle:I

    iget-object v1, p0, Lcom/android/camera/pip/opengl/LineRenderer;->color:[F

    invoke-static {v0, v6, v1, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 121
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->MVPMatrixHandle:I

    .line 122
    const-string v0, "glGetUniformLocation"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 125
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->MVPMatrixHandle:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 126
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 129
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 130
    const/4 v0, 0x3

    sget-object v1, Lcom/android/camera/pip/opengl/LineRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/pip/opengl/LineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 133
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->PositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 134
    return-void
.end method


# virtual methods
.method public draw(I[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "mvpMatrix"    # [F
    .param p3, "mainBuffer"    # Ljava/nio/FloatBuffer;
    .param p4, "subBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    if-nez p1, :cond_1

    .line 91
    move-object v0, p3

    .line 95
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 99
    :goto_1
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 93
    move-object v0, p4

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/camera/pip/opengl/LineRenderer;->draw(Ljava/nio/FloatBuffer;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_1
.end method

.method public draw(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 2
    .param p1, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p2, "mvpMatrix"    # [F
    .param p3, "mainBuffer"    # Ljava/nio/FloatBuffer;
    .param p4, "subBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 80
    const/4 v0, -0x1

    .line 81
    .local v0, "cameraId":I
    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p1, v1, :cond_1

    .line 82
    const/4 v0, 0x1

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/camera/pip/opengl/LineRenderer;->draw(I[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 86
    return-void

    .line 83
    :cond_1
    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_SUB_FRONT_FULL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p1, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 64
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 65
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 67
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 68
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 69
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 70
    sget-object v2, Lcom/android/camera/pip/opengl/LineRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader(TYPE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    sget-object v2, Lcom/android/camera/pip/opengl/LineRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 73
    const/4 v1, 0x0

    .line 76
    :cond_0
    return v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/camera/pip/opengl/LineRenderer;->GlProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 138
    return-void
.end method

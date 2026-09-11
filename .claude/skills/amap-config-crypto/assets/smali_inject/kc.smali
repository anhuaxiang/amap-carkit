.class public abstract Lkc;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lla$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkc$g;,
        Lkc$i;,
        Lkc$h;,
        Lkc$j;
    }
.end annotation


# static fields
.field public static B:Lkc$i;


# instance fields
.field public A:Ljava/lang/String;

.field public a:Ljs;

.field public b:Landroid/view/View;

.field public c:Lcom/autonavi/amapauto/MapSurfaceView;

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Lkc$h;

.field public k:Landroid/view/SurfaceView;

.field public l:Lkc$g;

.field public m:Lkc$j;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Leb;

.field public s:Landroid/os/Handler;

.field public t:Z

.field public u:Z

.field public v:J

.field public w:I

.field public x:I

.field public final y:Landroid/content/BroadcastReceiver;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lkc;->h:I

    .line 7
    iput-boolean v0, p0, Lkc;->i:Z

    .line 9
    new-instance v1, Lkc$g;

    .line 11
    invoke-direct {v1, p0}, Lkc$g;-><init>(Lkc;)V

    .line 14
    iput-object v1, p0, Lkc;->l:Lkc$g;

    .line 16
    iput-boolean v0, p0, Lkc;->n:Z

    .line 18
    iput-boolean v0, p0, Lkc;->o:Z

    .line 20
    iput-boolean v0, p0, Lkc;->p:Z

    .line 22
    iput-boolean v0, p0, Lkc;->q:Z

    .line 24
    iput-boolean v0, p0, Lkc;->t:Z

    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lkc;->u:Z

    .line 29
    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lkc;->v:J

    .line 33
    const/16 v1, 0xc8

    .line 35
    iput v1, p0, Lkc;->w:I

    .line 37
    iput v0, p0, Lkc;->x:I

    .line 39
    new-instance v0, Lkc$a;

    .line 41
    invoke-direct {v0, p0}, Lkc$a;-><init>(Lkc;)V

    .line 44
    iput-object v0, p0, Lkc;->y:Landroid/content/BroadcastReceiver;

    .line 46
    const-string v0, "init_loading"

    .line 48
    iput-object v0, p0, Lkc;->z:Ljava/lang/String;

    .line 50
    const-string v0, "action_hcp3_al_internal_nav_state"

    .line 52
    iput-object v0, p0, Lkc;->A:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static synthetic c(Lkc;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lkc;->C(I)V

    .line 4
    return-void
.end method

.method public static synthetic d(Lkc;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lkc;->u:Z

    .line 3
    return p0
.end method

.method public static synthetic e(Lkc;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lkc;->b:Landroid/view/View;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lkc;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lkc;->u:Z

    .line 3
    return p1
.end method

.method public static synthetic g(Lkc;)I
    .registers 1

    .line 1
    iget p0, p0, Lkc;->f:I

    .line 3
    return p0
.end method

.method public static synthetic h(Lkc;I)I
    .registers 2

    .line 1
    iput p1, p0, Lkc;->f:I

    .line 3
    return p1
.end method

.method public static synthetic i(Lkc;)I
    .registers 1

    .line 1
    iget p0, p0, Lkc;->g:I

    .line 3
    return p0
.end method

.method public static synthetic j(Lkc;I)I
    .registers 2

    .line 1
    iput p1, p0, Lkc;->g:I

    .line 3
    return p1
.end method

.method public static synthetic k(Lkc;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lkc;->d:J

    .line 3
    return-wide v0
.end method

.method public static synthetic l(Lkc;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lkc;->d:J

    .line 3
    return-wide p1
.end method

.method public static synthetic m(Lkc;)I
    .registers 1

    .line 1
    iget p0, p0, Lkc;->e:I

    .line 3
    return p0
.end method

.method public static synthetic n(Lkc;I)I
    .registers 2

    .line 1
    iput p1, p0, Lkc;->e:I

    .line 3
    return p1
.end method

.method public static synthetic o(Lkc;)I
    .registers 3

    .line 1
    iget v0, p0, Lkc;->e:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lkc;->e:I

    .line 7
    return v0
.end method

.method public static synthetic p(Lkc;)Landroid/view/SurfaceView;
    .registers 1

    .line 1
    iget-object p0, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 3
    return-object p0
.end method

.method public static synthetic q(Lkc;)Lcom/autonavi/amapauto/MapSurfaceView;
    .registers 1

    .line 1
    iget-object p0, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Activity"

    .line 6
    const-string v3, "onMultiTouchEvent excute multiFingerEnable "

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lse;->multiFingerEnable(Landroid/view/MotionEvent;)I

    .line 18
    move-result p1

    .line 19
    new-instance v1, Ly10;

    .line 21
    const/4 v3, 0x3

    .line 22
    invoke-direct {v1, v3}, Ly10;-><init>(I)V

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq p1, v4, :cond_23

    .line 29
    if-eq p1, v3, :cond_21

    .line 31
    const/4 v5, -0x1

    .line 32
    const/4 v6, 0x0

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    const/4 v5, 0x0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v5, 0x1

    .line 37
    :goto_24
    const/4 v6, 0x1

    .line 38
    :goto_25
    new-array v3, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p1

    .line 44
    aput-object p1, v3, v0

    .line 46
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object p1

    .line 50
    aput-object p1, v3, v4

    .line 52
    const-string p1, "onMultiTouchEvent excute multiFingerEnable muliFinger:{?}, opreateType:{?}"

    .line 54
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    if-eqz v6, :cond_44

    .line 59
    invoke-virtual {v1, v5}, Ly10;->g(I)V

    .line 62
    invoke-static {}, Ll30;->g()Ll30;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, v1}, Ll30;->a(Lec;)V

    .line 69
    :cond_44
    return v6
.end method

.method public final B()V
    .registers 2

    .line 1
    iget-object v0, p0, Lkc;->a:Ljs;

    .line 3
    if-nez v0, :cond_e

    .line 5
    new-instance v0, Lkc$e;

    .line 7
    invoke-direct {v0, p0}, Lkc$e;-><init>(Lkc;)V

    .line 10
    iput-object v0, p0, Lkc;->a:Ljs;

    .line 12
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->addNaviStatusChangeListener(Ljs;)V

    .line 15
    :cond_e
    return-void
.end method

.method public final C(I)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lkc;->u:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "Activity"

    .line 7
    if-nez v0, :cond_14

    .line 9
    new-array p1, v2, [Ljava/lang/Object;

    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    aput-object v0, p1, v1

    .line 15
    const-string v0, "sendInitLoadingEvent shouldKeepOnScreen:{?}"

    .line 17
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void

    .line 21
    :cond_14
    new-array v0, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    aput-object v2, v0, v1

    .line 29
    const-string v1, "sendInitLoadingEvent progress:{?}"

    .line 31
    invoke-static {v3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lkc;->A:Ljava/lang/String;

    .line 38
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lkc;->z:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public final D(Z)V
    .registers 3

    .line 1
    const/16 v0, 0x80

    .line 3
    if-eqz p1, :cond_c

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 12
    goto :goto_13

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 20
    :goto_13
    return-void
.end method

.method public a(I)V
    .registers 3

    .line 1
    sget-object v0, Lkc;->B:Lkc$i;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    :cond_7
    return-void
.end method

.method public final b()V
    .registers 12

    .line 1
    const-string v0, "DestroyNativeResource"

    .line 3
    const-string v1, "Activity"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-string v0, "BaseNativeActivity DestroyNativeResource"

    .line 10
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lte0;->a()I

    .line 16
    move-result v2

    .line 17
    int-to-long v2, v2

    .line 18
    const-wide/16 v4, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    cmp-long v7, v2, v4

    .line 23
    if-nez v7, :cond_28

    .line 25
    const-string v2, "Float"

    .line 27
    new-array v3, v6, [Ljava/lang/Object;

    .line 29
    const-string v4, "DestroyNativeResource is Ok"

    .line 31
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 40
    return-void

    .line 41
    :cond_28
    invoke-static {}, Lrv;->H()Lrv;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v6}, Lrv;->l0(Z)V

    .line 48
    invoke-static {}, Lrv;->H()Lrv;

    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-virtual {v2, v3}, Lrv;->m0(Z)V

    .line 56
    invoke-static {}, Lrv;->H()Lrv;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lrv;->r0()V

    .line 63
    iget-object v2, p0, Lkc;->b:Landroid/view/View;

    .line 65
    const/4 v4, 0x0

    .line 66
    if-eqz v2, :cond_4c

    .line 68
    iget-object v5, p0, Lkc;->j:Lkc$h;

    .line 70
    invoke-virtual {v2, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 73
    iput-object v4, p0, Lkc;->b:Landroid/view/View;

    .line 75
    iput-object v4, p0, Lkc;->j:Lkc$h;

    .line 77
    :cond_4c
    invoke-static {}, Lrv;->H()Lrv;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lrv;->K()Ls20;

    .line 84
    move-result-object v2

    .line 85
    if-eqz v2, :cond_61

    .line 87
    invoke-static {}, Lrv;->H()Lrv;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lrv;->K()Ls20;

    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v2}, Ls20;->release()V

    .line 98
    :cond_61
    iget-object v2, p0, Lkc;->a:Ljs;

    .line 100
    if-eqz v2, :cond_6a

    .line 102
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->removeNaviStatusChangeListener(Ljs;)V

    .line 105
    iput-object v4, p0, Lkc;->a:Ljs;

    .line 107
    :cond_6a
    invoke-static {}, Lh7;->a()Lh7;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lh7;->d()V

    .line 114
    const-string v2, "start wait Destroy complete"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v2, 0x0

    .line 120
    :cond_77
    :goto_77
    invoke-static {}, Lrv;->H()Lrv;

    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5}, Lrv;->R()Z

    .line 127
    move-result v5

    .line 128
    const-string v7, "BaseNativeActivity"

    .line 130
    if-eqz v5, :cond_f7

    .line 132
    invoke-static {}, Lrv;->H()Lrv;

    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v5}, Lrv;->R()Z

    .line 139
    move-result v5

    .line 140
    if-nez v5, :cond_8e

    .line 142
    goto :goto_f7

    .line 143
    :cond_8e
    const-wide/16 v8, 0x64

    .line 145
    :try_start_90
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_93
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_93} :catch_94

    .line 148
    goto :goto_95

    .line 149
    :catch_94
    nop

    .line 150
    :goto_95
    add-int/2addr v2, v3

    .line 151
    const/16 v5, 0x12c

    .line 153
    if-le v2, v5, :cond_b3

    .line 155
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5}, Lcom/autonavi/amapauto/framework/AutoLoader;->s()V

    .line 162
    const-string v5, "System.exit, DestroyNativeResource"

    .line 164
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v5, "Call System.exit"

    .line 169
    new-array v8, v6, [Ljava/lang/Object;

    .line 171
    invoke-static {v7, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const/16 v5, 0x78

    .line 176
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 179
    goto :goto_77

    .line 180
    :cond_b3
    const/16 v5, 0x32

    .line 182
    if-ne v2, v5, :cond_77

    .line 184
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 187
    move-result-object v5

    .line 188
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 191
    move-result-object v5

    .line 192
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 195
    move-result-object v5

    .line 196
    :cond_c3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    move-result v7

    .line 200
    if-eqz v7, :cond_77

    .line 202
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    move-result-object v7

    .line 206
    check-cast v7, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 211
    move-result-object v8

    .line 212
    check-cast v8, Ljava/lang/Thread;

    .line 214
    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 217
    move-result-object v8

    .line 218
    const-string v9, "AutoMainThread"

    .line 220
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_c3

    .line 226
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 229
    move-result-object v7

    .line 230
    check-cast v7, [Ljava/lang/StackTraceElement;

    .line 232
    array-length v8, v7

    .line 233
    const/4 v9, 0x0

    .line 234
    :goto_e9
    if-ge v9, v8, :cond_c3

    .line 236
    aget-object v10, v7, v9

    .line 238
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    .line 241
    move-result-object v10

    .line 242
    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    add-int/lit8 v9, v9, 0x1

    .line 247
    goto :goto_e9

    .line 248
    :cond_f7
    :goto_f7
    const-string v2, "end wait Destroy complete"

    .line 250
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    const-string v2, "DestroyNativeResource End TaskId :"

    .line 260
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 266
    move-result v2

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v1

    .line 274
    new-array v2, v6, [Ljava/lang/Object;

    .line 276
    invoke-static {v7, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iput v6, p0, Lkc;->h:I

    .line 281
    iput-boolean v6, p0, Lkc;->i:Z

    .line 283
    iget-object v1, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 285
    if-eqz v1, :cond_123

    .line 287
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    iput-object v4, p0, Lkc;->m:Lkc$j;

    .line 292
    :cond_123
    iget-object v1, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 294
    if-eqz v1, :cond_130

    .line 296
    invoke-static {}, Lrv;->H()Lrv;

    .line 299
    move-result-object v1

    .line 300
    iget-object v2, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 302
    invoke-virtual {v1, v2}, Lrv;->e0(Landroid/view/View;)V

    .line 305
    :cond_130
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result p1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p1

    .line 6
    :catch_5
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object p1, v0, v1

    .line 10
    const-string p1, "Activity"

    .line 12
    const-string v1, "onConfigurationChanged newConfig:{?}"

    .line 14
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lkc;->x()V

    .line 20
    invoke-static {}, Lh7;->a()Lh7;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lh7;->b()V

    .line 27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lb7;->d(I)V

    .line 5
    invoke-static {}, Lp7;->c()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const-string v3, "AutoNativeActivity"

    .line 12
    if-eqz v1, :cond_2c

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-array p1, v2, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    aput-object v1, p1, v0

    .line 29
    const-string v0, "finishing status , taskId = {?}"

    .line 31
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const-string p1, "Finishing status"

    .line 36
    invoke-static {p1}, Lb7;->f(Ljava/lang/String;)V

    .line 39
    const/16 p1, 0x65

    .line 41
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 44
    return-void

    .line 45
    :cond_2c
    invoke-static {}, Lte0;->a()I

    .line 48
    move-result v1

    .line 49
    int-to-long v4, v1

    .line 50
    new-array v1, v2, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 55
    move-result v6

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v6

    .line 60
    aput-object v6, v1, v0

    .line 62
    const-string v6, "onCreate, taskId = {?}"

    .line 64
    invoke-static {v3, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-array v1, v2, [Ljava/lang/Object;

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    move-result-object v2

    .line 73
    aput-object v2, v1, v0

    .line 75
    const-string v2, "getActivityState code = {?}"

    .line 77
    invoke-static {v3, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    const-string v2, "Intent :"

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    new-array v2, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sget-boolean v1, Lyg0;->a:Z

    .line 108
    const-string v2, "Activity"

    .line 110
    if-nez v1, :cond_96

    .line 112
    const-wide/16 v6, 0x1

    .line 114
    cmp-long v1, v4, v6

    .line 116
    if-eqz v1, :cond_96

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static {}, Lrv;->H()Lrv;

    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v1, v0}, Lrv;->s(Landroid/content/Intent;I)V

    .line 132
    const-string p1, "cache activity finish"

    .line 134
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-array v0, v0, [Ljava/lang/Object;

    .line 139
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {p1}, Lb7;->f(Ljava/lang/String;)V

    .line 145
    const/16 p1, 0x66

    .line 147
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 150
    return-void

    .line 151
    :cond_96
    const-string v1, "BaseNativeActivity onCreate"

    .line 153
    invoke-static {v1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 156
    new-instance v3, Lch0;

    .line 158
    const-string v6, "onCreate"

    .line 160
    invoke-direct {v3, v2, p0, v6}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string v6, "code:"

    .line 170
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    const-string v4, " "

    .line 178
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget v4, p0, Lkc;->h:I

    .line 183
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v3, v2}, Lch0;->b(Ljava/lang/String;)V

    .line 193
    iget v2, p0, Lkc;->h:I

    .line 195
    if-nez v2, :cond_16b

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 203
    move-result-object p1

    .line 204
    iget-boolean p1, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->g:Z

    .line 206
    if-eqz p1, :cond_105

    .line 208
    invoke-static {}, Lte0;->b()Z

    .line 211
    move-result p1

    .line 212
    if-eqz p1, :cond_ed

    .line 214
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 217
    move-result-object p1

    .line 218
    iput-boolean v0, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->g:Z

    .line 220
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 223
    move-result-object p1

    .line 224
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 227
    move-result-wide v4

    .line 228
    iput-wide v4, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->d:J

    .line 230
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 233
    move-result-object p1

    .line 234
    const/4 v2, 0x5

    .line 235
    iput v2, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 237
    goto :goto_116

    .line 238
    :cond_ed
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 241
    move-result-object p1

    .line 242
    iput-boolean v0, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->g:Z

    .line 244
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 247
    move-result-object p1

    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 251
    move-result-wide v4

    .line 252
    iput-wide v4, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->d:J

    .line 254
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 257
    move-result-object p1

    .line 258
    const/4 v2, 0x2

    .line 259
    iput v2, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 261
    goto :goto_116

    .line 262
    :cond_105
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 265
    move-result-object p1

    .line 266
    const/4 v2, 0x4

    .line 267
    iput v2, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 269
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 272
    move-result-object p1

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 276
    move-result-wide v4

    .line 277
    iput-wide v4, p1, Lcom/autonavi/amapauto/framework/AutoLoader;->f:J

    .line 279
    :goto_116
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 282
    move-result-object p1

    .line 283
    invoke-virtual {p1}, Lcom/autonavi/amapauto/framework/AutoLoader;->g()V

    .line 286
    invoke-static {}, Lrv;->H()Lrv;

    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {p1, v2, v0}, Lrv;->s(Landroid/content/Intent;I)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 300
    move-result p1

    .line 301
    iput p1, p0, Lkc;->h:I

    .line 303
    invoke-static {v0}, Lte0;->d(I)V

    .line 306
    invoke-static {}, Lrv;->H()Lrv;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1, v0}, Lrv;->l0(Z)V

    .line 313
    invoke-static {}, Lrv;->H()Lrv;

    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lrv;->Z()V

    .line 320
    invoke-static {}, Lzm;->d()Lzm;

    .line 323
    move-result-object p1

    .line 324
    const-string v2, "isNeedICupHMIConfig"

    .line 326
    invoke-virtual {p1, v2, v0}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 329
    move-result p1

    .line 330
    invoke-static {}, Lh7;->a()Lh7;

    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2, p1}, Lh7;->c(Z)V

    .line 337
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 340
    move-result-object p1

    .line 341
    const-wide/16 v4, 0x0

    .line 343
    invoke-virtual {p1, v4, v5}, Lcom/autonavi/amapauto/framework/AutoLoader;->e(J)V

    .line 346
    new-instance p1, Lkc$i;

    .line 348
    invoke-direct {p1, p0}, Lkc$i;-><init>(Lkc;)V

    .line 351
    sput-object p1, Lkc;->B:Lkc$i;

    .line 353
    invoke-static {}, Lla;->c()Lla;

    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p1, p0}, Lla;->d(Lla$c;)V

    .line 360
    invoke-virtual {p0}, Lkc;->B()V

    .line 363
    goto :goto_179

    .line 364
    :cond_16b
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-static {}, Lrv;->H()Lrv;

    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {p1, v2, v0}, Lrv;->s(Landroid/content/Intent;I)V

    .line 378
    :goto_179
    new-instance p1, Ljava/lang/StringBuilder;

    .line 380
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    const-string v2, "taskId = "

    .line 385
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 391
    move-result v2

    .line 392
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    move-result-object p1

    .line 399
    invoke-virtual {v3, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lkc;->y()V

    .line 405
    invoke-static {}, Lse;->c()Lse;

    .line 408
    move-result-object p1

    .line 409
    const v2, 0xea61

    .line 412
    invoke-virtual {p1, v2}, Lse;->getOptionalValue(I)Leq$a;

    .line 415
    move-result-object p1

    .line 416
    invoke-virtual {p1}, Leq$a;->b()Z

    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_1b5

    .line 422
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 424
    const/16 v2, 0x1e

    .line 426
    if-lt p1, v2, :cond_1b2

    .line 428
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 431
    move-result-object p1

    .line 432
    invoke-static {p1, v0}, Ljc;->a(Landroid/view/Window;Z)V

    .line 435
    :cond_1b2
    invoke-static {p0}, Lyg0;->a(Landroid/content/Context;)V

    .line 438
    :cond_1b5
    invoke-static {v1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public onDestroy()V
    .registers 8

    .line 1
    sget-boolean v0, Lyg0;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_19

    .line 6
    iget-object v0, p0, Lkc;->a:Ljs;

    .line 8
    if-eqz v0, :cond_e

    .line 10
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->removeNaviStatusChangeListener(Ljs;)V

    .line 13
    iput-object v1, p0, Lkc;->a:Ljs;

    .line 15
    :cond_e
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->r0()V

    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 25
    return-void

    .line 26
    :cond_19
    const/4 v0, 0x5

    .line 27
    invoke-static {v0}, Lb7;->d(I)V

    .line 30
    const-string v0, "BaseNativeActivity onDestroy"

    .line 32
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 38
    move-result-object v2

    .line 39
    const-string v3, "Activity onDestroy Begin"

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v2, v3, v4}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 45
    new-instance v2, Lch0;

    .line 47
    const-string v3, "Activity"

    .line 49
    const-string v5, "onDestroy"

    .line 51
    invoke-direct {v2, v3, p0, v5}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2}, Lch0;->a()V

    .line 57
    invoke-static {}, Lla;->c()Lla;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v1}, Lla;->d(Lla$c;)V

    .line 64
    sput-object v1, Lkc;->B:Lkc$i;

    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {v1}, Lte0;->f(Z)V

    .line 70
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 73
    move-result-object v1

    .line 74
    const-wide/16 v5, 0xf

    .line 76
    invoke-virtual {v1, v5, v6}, Lcom/autonavi/amapauto/framework/AutoLoader;->e(J)V

    .line 79
    invoke-virtual {p0}, Lkc;->b()V

    .line 82
    sget v1, Li6;->k:I

    .line 84
    sget v3, Li6;->f:I

    .line 86
    invoke-static {v1, v3}, Li6;->y(II)Z

    .line 89
    iget-object v1, p0, Lkc;->r:Leb;

    .line 91
    if-eqz v1, :cond_5f

    .line 93
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 96
    :cond_5f
    :try_start_5f
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_62

    .line 99
    :catch_62
    invoke-virtual {v2}, Lch0;->c()V

    .line 102
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 105
    move-result-object v1

    .line 106
    const-string v2, "Activity onDestroy End"

    .line 108
    invoke-virtual {v1, v2, v4}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 111
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lse;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1c

    .line 13
    new-array p2, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    aput-object p1, p2, v1

    .line 21
    const-string p1, "Activity"

    .line 23
    const-string v0, "ChannelManager onKeyDown, keyCode={?}"

    .line 25
    invoke-static {p1, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v2

    .line 29
    :cond_1c
    const/4 v0, 0x4

    .line 30
    const-string v3, "BaseNativeActivity"

    .line 32
    if-ne p1, v0, :cond_45

    .line 34
    invoke-static {}, Lrv;->H()Lrv;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lrv;->P()Z

    .line 41
    move-result p1

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v4, "onKeyDown isCanUseBackBtn="

    .line 49
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {v3, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    if-eqz p1, :cond_44

    .line 66
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeOnKeyDown(I)V

    .line 69
    :cond_44
    return v2

    .line 70
    :cond_45
    const/16 v0, 0x19

    .line 72
    if-ne p1, v0, :cond_5a

    .line 74
    const-string v0, "onKeyDown KEYCODE_VOLUME_DOWN"

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lkc;->r()Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_6f

    .line 87
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->nativeChangeVolume(I)V

    .line 90
    return v2

    .line 91
    :cond_5a
    const/16 v0, 0x18

    .line 93
    if-ne p1, v0, :cond_6f

    .line 95
    const-string v0, "onKeyDown KEYCODE_VOLUME_UP"

    .line 97
    new-array v4, v1, [Ljava/lang/Object;

    .line 99
    invoke-static {v3, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lkc;->r()Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_6f

    .line 108
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->nativeChangeVolume(I)V

    .line 111
    return v2

    .line 112
    :cond_6f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 115
    move-result p1

    .line 116
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1
    const/16 v0, 0x19

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "BaseNativeActivity"

    .line 7
    if-ne p1, v0, :cond_16

    .line 9
    const-string v0, "onKeyUp KEYCODE_VOLUME_DOWN"

    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lkc;->r()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_28

    .line 22
    return v1

    .line 23
    :cond_16
    const/16 v0, 0x18

    .line 25
    if-ne p1, v0, :cond_28

    .line 27
    const-string v0, "onKeyUp KEYCODE_VOLUME_UP"

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lkc;->r()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_28

    .line 40
    return v1

    .line 41
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public onLowMemory()V
    .registers 4

    .line 1
    const/16 v0, 0x14

    .line 3
    invoke-static {v0}, Lb7;->d(I)V

    .line 6
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "Activity onLowMemory"

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 16
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 19
    const-string v0, "Activity"

    .line 21
    const-string v1, "onLowMemory"

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lh7;->a()Lh7;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lh7;->k()V

    .line 33
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Activity"

    const-string v1, "onMultiWindowModeChanged isInMultiWindowMode={?}"

    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->updateFullScreenBySave(Landroid/app/Activity;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 5

    .line 4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Activity"

    const-string p2, "onMultiWindowModeChanged isInMultiWindowMode={?}, newConfig={?}"

    .line 6
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->updateFullScreenBySave(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 7

    .line 1
    new-instance v0, Lch0;

    .line 3
    const-string v1, "onNewIntent"

    .line 5
    const-string v2, "Activity"

    .line 7
    invoke-direct {v0, v2, p0, v1}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const/4 v3, 0x1

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v1, v3, v4

    .line 20
    const-string v1, "onNewIntent intent:{?}"

    .line 22
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-string v1, "intent is encoding"

    .line 27
    invoke-virtual {v0, v1}, Lch0;->b(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lrv;->H()Lrv;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, p1, v4}, Lrv;->s(Landroid/content/Intent;I)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {v0}, Lch0;->c()V

    .line 46
    return-void
.end method

.method public onResume()V
    .registers 9

    .line 1
    sget-object v0, Lkc;->B:Lkc$i;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lkc;->o:Z

    .line 12
    const-string v2, "BaseNativeActivity onResume start"

    .line 14
    invoke-static {v2}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v2}, Lb7;->d(I)V

    .line 21
    invoke-static {}, Ltc0;->m()Ltc0;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ltc0;->a()V

    .line 28
    const-string v2, "BaseNativeActivity onResume"

    .line 30
    invoke-static {v2}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 36
    move-result-object v3

    .line 37
    const-string v4, "Activity onResume Init"

    .line 39
    invoke-virtual {v3, v4, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 42
    new-instance v3, Lch0;

    .line 44
    const-string v4, "Activity"

    .line 46
    const-string v5, "onResume"

    .line 48
    invoke-direct {v3, v4, p0, v5}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Lch0;->a()V

    .line 54
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 57
    move-result-object v4

    .line 58
    iget v4, v4, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 60
    const/4 v5, 0x3

    .line 61
    if-eqz v4, :cond_46

    .line 63
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 66
    move-result-object v4

    .line 67
    iget v4, v4, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 69
    if-ne v4, v5, :cond_5d

    .line 71
    :cond_46
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 74
    move-result-object v4

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 78
    move-result-wide v6

    .line 79
    iput-wide v6, v4, Lcom/autonavi/amapauto/framework/AutoLoader;->e:J

    .line 81
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 84
    move-result-object v4

    .line 85
    iput v5, v4, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 87
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/autonavi/amapauto/framework/AutoLoader;->g()V

    .line 94
    :cond_5d
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 97
    move-result-object v4

    .line 98
    const-wide/16 v5, 0xb

    .line 100
    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amapauto/framework/AutoLoader;->e(J)V

    .line 103
    :try_start_66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_69

    .line 106
    :catch_69
    iput-boolean v0, p0, Lkc;->n:Z

    .line 108
    iput-boolean v1, p0, Lkc;->p:Z

    .line 110
    invoke-static {}, Lh7;->a()Lh7;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lh7;->g()V

    .line 117
    invoke-virtual {v3}, Lch0;->c()V

    .line 120
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 123
    move-result-object v0

    .line 124
    const-string v3, "Activity onResume End"

    .line 126
    invoke-virtual {v0, v3, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 129
    invoke-static {v2}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 132
    const-string v0, "BaseNativeActivity onResume end"

    .line 134
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onStart()V
    .registers 9

    .line 1
    const-string v0, "BaseNativeActivity onStart begin"

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Lb7;->d(I)V

    .line 10
    const-string v2, "BaseNativeActivity onStart"

    .line 12
    invoke-static {v2}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 18
    move-result-object v3

    .line 19
    const-string v4, "Activity onStart Init"

    .line 21
    invoke-virtual {v3, v4, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 24
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 27
    move-result-object v3

    .line 28
    iget v3, v3, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 30
    const/4 v4, 0x3

    .line 31
    if-eqz v3, :cond_28

    .line 33
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 36
    move-result-object v3

    .line 37
    iget v3, v3, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 39
    if-ne v3, v4, :cond_3f

    .line 41
    :cond_28
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 44
    move-result-object v3

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 48
    move-result-wide v5

    .line 49
    iput-wide v5, v3, Lcom/autonavi/amapauto/framework/AutoLoader;->e:J

    .line 51
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 54
    move-result-object v3

    .line 55
    iput v4, v3, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 57
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->g()V

    .line 64
    :cond_3f
    const/4 v3, 0x0

    .line 65
    iput-boolean v3, p0, Lkc;->o:Z

    .line 67
    :try_start_42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 70
    goto :goto_47

    .line 71
    :catch_46
    nop

    .line 72
    :goto_47
    iget-object v4, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 74
    if-eqz v4, :cond_50

    .line 76
    iget-object v5, p0, Lkc;->m:Lkc$j;

    .line 78
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    :cond_50
    iget-object v4, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 83
    if-eqz v4, :cond_5d

    .line 85
    invoke-static {}, Lrv;->H()Lrv;

    .line 88
    move-result-object v4

    .line 89
    iget-object v5, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 91
    invoke-virtual {v4, v5}, Lrv;->q(Landroid/view/View;)V

    .line 94
    :cond_5d
    new-instance v4, Lch0;

    .line 96
    const-string v5, "Activity"

    .line 98
    const-string v6, "onStart"

    .line 100
    invoke-direct {v4, v5, p0, v6}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4}, Lch0;->a()V

    .line 106
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 109
    move-result-object v5

    .line 110
    const-wide/16 v6, 0xa

    .line 112
    invoke-virtual {v5, v6, v7}, Lcom/autonavi/amapauto/framework/AutoLoader;->e(J)V

    .line 115
    invoke-static {}, Lh7;->a()Lh7;

    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5}, Lh7;->h()V

    .line 122
    const-string v5, "Float"

    .line 124
    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {v5, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lcom/autonavi/autofloat/FloatWindowManagerNative;->existFloatWindowShown()Z

    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_89

    .line 135
    invoke-static {}, Lcom/autonavi/autofloat/FloatWindowManagerNative;->hideFloatWindow()V

    .line 138
    :cond_89
    invoke-virtual {v4}, Lch0;->c()V

    .line 141
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 144
    move-result-object v0

    .line 145
    const-string v3, "Activity onStart End"

    .line 147
    invoke-virtual {v0, v3, v1}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 150
    invoke-static {v2}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 153
    const-string v0, "BaseNativeActivity onStart end"

    .line 155
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lkc;->B:Lkc$i;

    .line 160
    if-eqz v0, :cond_ab

    .line 162
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    sget-object v0, Lkc;->B:Lkc$i;

    .line 167
    const-wide/16 v2, 0x7d0

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 172
    :cond_ab
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6

    .line 1
    const/16 v0, 0x15

    .line 3
    invoke-static {v0}, Lb7;->d(I)V

    .line 6
    const-string v0, "BaseNativeActivity onWindowFocusChanged"

    .line 8
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 11
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 14
    const-string v1, "Activity"

    .line 16
    const-string v2, "onWindowFocusChanged"

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v3, "Activity hasFocus "

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 46
    invoke-static {}, Lh7;->a()Lh7;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, p1}, Lh7;->q(Z)V

    .line 53
    invoke-static {}, Lse;->c()Lse;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1, p0, p1}, Lse;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 60
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_47

    .line 65
    invoke-static {}, Lvi;->q()Lvi;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, p0}, Lvi;->n(Landroid/app/Activity;)V

    .line 72
    :cond_47
    return-void
.end method

.method public final r()Z
    .registers 9

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->u:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x3f2

    .line 14
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    .line 17
    move-result v1

    .line 18
    invoke-static {}, Lk6;->g()Lk6;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lk6;->i()Z

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x3

    .line 27
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v5

    .line 33
    aput-object v5, v4, v2

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x1

    .line 40
    aput-object v5, v4, v6

    .line 42
    const/4 v5, 0x2

    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v7

    .line 47
    aput-object v7, v4, v5

    .line 49
    const-string v5, "BaseNativeActivity"

    .line 51
    const-string v7, "checkInterceptVoloumKeyEvent isInterceptVoloumekey:{?} isAudioSync:{?} isForgeroud:{?}"

    .line 53
    invoke-static {v5, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    if-eqz v0, :cond_3e

    .line 58
    if-eqz v1, :cond_3e

    .line 60
    if-eqz v3, :cond_3e

    .line 62
    const/4 v2, 0x1

    .line 63
    :cond_3e
    return v2
.end method

.method public s()V
    .registers 5

    .line 1
    const-string v0, "Activity"

    .line 3
    const-string v1, "ACTIVITY_RESUME_MANUAL"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v2, 0x0

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-boolean v0, p0, Lkc;->q:Z

    .line 16
    if-eqz v0, :cond_19

    .line 18
    invoke-static {}, Lh7;->a()Lh7;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lh7;->g()V

    .line 25
    goto :goto_28

    .line 26
    :cond_19
    sget-object v0, Lkc;->B:Lkc$i;

    .line 28
    if-eqz v0, :cond_28

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    sget-object v0, Lkc;->B:Lkc$i;

    .line 36
    const-wide/16 v2, 0x7d0

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkc;->q:Z

    .line 4
    const/4 v1, 0x7

    .line 5
    invoke-static {v1}, Lb7;->d(I)V

    .line 8
    const-string v1, "BaseNativeActivity surfaceChanged"

    .line 10
    invoke-static {v1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 16
    move-result-object v2

    .line 17
    const-string v3, "Activity surfaceChanged init"

    .line 19
    invoke-virtual {v2, v3, v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 22
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 25
    move-result-object v2

    .line 26
    const-wide/16 v3, 0x3

    .line 28
    invoke-virtual {v2, v3, v4}, Lcom/autonavi/amapauto/framework/AutoLoader;->e(J)V

    .line 31
    invoke-static {}, Lh7;->a()Lh7;

    .line 34
    move-result-object v2

    .line 35
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v2, p1, p2, p3, p4}, Lh7;->m(Landroid/view/Surface;III)V

    .line 42
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 45
    move-result-object p1

    .line 46
    const-string p2, "Activity surfaceChanged End"

    .line 48
    invoke-virtual {p1, p2, v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 51
    invoke-static {v1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 54
    iget-boolean p1, p0, Lkc;->p:Z

    .line 56
    if-eqz p1, :cond_40

    .line 58
    invoke-static {}, Lh7;->a()Lh7;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lh7;->g()V

    .line 65
    :cond_40
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 8

    .line 1
    const-string v0, "BaseNativeActivity surfaceCreated begin"

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_f

    .line 12
    iget-boolean v0, p0, Lkc;->o:Z

    .line 14
    if-eqz v0, :cond_22

    .line 16
    :cond_f
    invoke-static {}, Lrv;->H()Lrv;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lrv;->L()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Luf;->b(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_22

    .line 30
    const/16 v0, 0x77

    .line 32
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 35
    :cond_22
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 38
    move-result-object v0

    .line 39
    iget v0, v0, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 41
    const/4 v1, 0x3

    .line 42
    if-eqz v0, :cond_33

    .line 44
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 47
    move-result-object v0

    .line 48
    iget v0, v0, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 50
    if-ne v0, v1, :cond_4a

    .line 52
    :cond_33
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 59
    move-result-wide v2

    .line 60
    iput-wide v2, v0, Lcom/autonavi/amapauto/framework/AutoLoader;->e:J

    .line 62
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 65
    move-result-object v0

    .line 66
    iput v1, v0, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 68
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->g()V

    .line 75
    :cond_4a
    const/4 v0, 0x6

    .line 76
    invoke-static {v0}, Lb7;->d(I)V

    .line 79
    sget-object v1, Lcom/autonavi/amapauto/MapApplication;->q:Lcom/autonavi/amapauto/MapApplication;

    .line 81
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/MapApplication;->y(I)V

    .line 84
    const-string v0, "BaseNativeActivity surfaceCreated"

    .line 86
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 92
    move-result-object v1

    .line 93
    const-string v2, "Activity surfaceCreated init"

    .line 95
    const/4 v3, 0x1

    .line 96
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 99
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 102
    move-result-object v1

    .line 103
    const-wide/16 v4, 0x1

    .line 105
    invoke-virtual {v1, v4, v5}, Lcom/autonavi/amapauto/framework/AutoLoader;->e(J)V

    .line 108
    invoke-static {}, Lh7;->a()Lh7;

    .line 111
    move-result-object v1

    .line 112
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v1, p1}, Lh7;->n(Landroid/view/Surface;)V

    .line 119
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 122
    move-result-object p1

    .line 123
    const-string v1, "Activity surfaceCreated End"

    .line 125
    invoke-virtual {p1, v1, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 128
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 131
    const-string p1, "BaseNativeActivity surfaceCreated end"

    .line 133
    invoke-static {p1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 8

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lkc;->q:Z

    .line 4
    const/16 v0, 0x8

    .line 6
    invoke-static {v0}, Lb7;->d(I)V

    .line 9
    sget-object v1, Lcom/autonavi/amapauto/MapApplication;->q:Lcom/autonavi/amapauto/MapApplication;

    .line 11
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/MapApplication;->y(I)V

    .line 14
    const-string v0, "BaseNativeActivity surfaceDestroyed"

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Activity surfaceDestroyed init"

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v1, v2, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 29
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 32
    move-result-object v1

    .line 33
    const-wide/16 v4, 0x2

    .line 35
    invoke-virtual {v1, v4, v5}, Lcom/autonavi/amapauto/framework/AutoLoader;->e(J)V

    .line 38
    invoke-static {}, Lh7;->a()Lh7;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Lh7;->o(Z)V

    .line 49
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 52
    move-result-object v1

    .line 53
    iput p1, v1, Lcom/autonavi/amapauto/framework/AutoLoader;->h:I

    .line 55
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 58
    move-result-object p1

    .line 59
    const-string v1, "Activity surfaceDestroyed End"

    .line 61
    invoke-virtual {p1, v1, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 64
    invoke-static {v0}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2

    .line 1
    return-void
.end method

.method public t()V
    .registers 7

    .line 1
    const-string v0, "mCover is null"

    .line 3
    const/16 v1, 0x13

    .line 5
    invoke-static {v1}, Lb7;->d(I)V

    .line 8
    const-string v1, "BaseNativeActivity hideCover"

    .line 10
    invoke-static {v1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 13
    const-string v2, "hideCover begin"

    .line 15
    invoke-static {v2}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v3, "hideCover taskId: "

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    new-array v4, v3, [Ljava/lang/Object;

    .line 42
    const-string v5, "BaseNativeActivity"

    .line 44
    invoke-static {v5, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {v3}, Lte0;->f(Z)V

    .line 50
    const/4 v2, 0x1

    .line 51
    sput-boolean v2, Lcom/autonavi/amapauto/MapApplication;->p:Z

    .line 53
    :try_start_34
    iget-object v2, p0, Lkc;->b:Landroid/view/View;

    .line 55
    if-eqz v2, :cond_65

    .line 57
    iget-object v0, p0, Lkc;->j:Lkc$h;

    .line 59
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    invoke-static {}, Ljf0;->k()Z

    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_55

    .line 68
    iget-object v0, p0, Lkc;->b:Landroid/view/View;

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 73
    iget-object v0, p0, Lkc;->b:Landroid/view/View;

    .line 75
    const/16 v2, 0x8

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lkc;->b:Landroid/view/View;

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_55
    iget-object v0, p0, Lkc;->b:Landroid/view/View;

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_6d

    .line 94
    const-string v0, "mCover is VISIBLE"

    .line 96
    new-array v2, v3, [Ljava/lang/Object;

    .line 98
    invoke-static {v5, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    goto :goto_6d

    .line 102
    :cond_65
    new-array v2, v3, [Ljava/lang/Object;

    .line 104
    invoke-static {v5, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {v0}, Lb7;->f(Ljava/lang/String;)V

    .line 110
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 112
    if-eqz v0, :cond_a3

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 117
    move-result v0

    .line 118
    const/4 v2, 0x4

    .line 119
    if-ne v0, v2, :cond_a3

    .line 121
    iget-object v0, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 123
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-static {}, Lrv;->H()Lrv;

    .line 129
    move-result-object v0

    .line 130
    iget-object v2, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 132
    invoke-virtual {v0, v2}, Lrv;->q(Landroid/view/View;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_86} :catch_87

    .line 135
    goto :goto_a3

    .line 136
    :catch_87
    move-exception v0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v4, "hideCover Exception "

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    new-array v2, v3, [Ljava/lang/Object;

    .line 156
    invoke-static {v5, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    const-string v0, "hideCover Exception"

    .line 161
    invoke-static {v0}, Lb7;->f(Ljava/lang/String;)V

    .line 164
    :cond_a3
    :goto_a3
    invoke-static {}, Ltk;->d()Ltk;

    .line 167
    move-result-object v0

    .line 168
    new-instance v2, Lkc$f;

    .line 170
    invoke-direct {v2, p0}, Lkc$f;-><init>(Lkc;)V

    .line 173
    const-wide/16 v3, 0xc8

    .line 175
    invoke-virtual {v0, v2, v3, v4}, Ltk;->a(Ljava/lang/Runnable;J)V

    .line 178
    invoke-static {v1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public u(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    const/16 p1, 0x12

    .line 3
    invoke-static {p1}, Lb7;->d(I)V

    .line 6
    const-string p1, "BaseNativeActivity init"

    .line 8
    invoke-static {p1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->BeginSection(Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lkc;->i:Z

    .line 13
    const-string v1, "Activity"

    .line 15
    if-eqz v0, :cond_1c

    .line 17
    const-string v0, "mIsInitViewReady"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lkc;->t()V

    .line 25
    invoke-static {p1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 28
    return-void

    .line 29
    :cond_1c
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 32
    move-result-object v0

    .line 33
    const-string v2, "Activity init Begin"

    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v0, v2, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 39
    iput-boolean v3, p0, Lkc;->i:Z

    .line 41
    sget-boolean v0, Lyg0;->a:Z

    .line 43
    if-nez v0, :cond_3a

    .line 45
    invoke-static {}, Lse;->c()Lse;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lse;->initCarSpeed()V

    .line 52
    invoke-static {}, Lh7;->a()Lh7;

    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lh7;->e()V

    .line 59
    :cond_3a
    invoke-static {}, Lrv;->H()Lrv;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, p0}, Lrv;->d0(Landroid/app/Activity;)V

    .line 66
    const/4 v0, 0x0

    .line 67
    new-array v2, v0, [Ljava/lang/Object;

    .line 69
    const-string v4, "BaseNativeActivity"

    .line 71
    const-string v5, "init"

    .line 73
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "BaseNativeActivity init begin"

    .line 81
    invoke-static {v1}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 84
    new-instance v1, Lkc$h;

    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-direct {v1, p0, v2}, Lkc$h;-><init>(Lkc;Lkc$a;)V

    .line 90
    iput-object v1, p0, Lkc;->j:Lkc$h;

    .line 92
    invoke-static {}, Lzm;->d()Lzm;

    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Lzm;->y:Ljava/lang/String;

    .line 98
    invoke-virtual {v1, v2, v3}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 101
    move-result v1

    .line 102
    new-array v2, v3, [Ljava/lang/Object;

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    move-result-object v5

    .line 108
    aput-object v5, v2, v0

    .line 110
    const-string v0, "isNeedScreenCapture:{?}"

    .line 112
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    if-nez v1, :cond_7d

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 120
    move-result-object v0

    .line 121
    const/16 v1, 0x2000

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 126
    :cond_7d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 129
    move-result-object v0

    .line 130
    const/16 v1, 0x20

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 135
    invoke-virtual {p0, v3}, Lkc;->D(Z)V

    .line 138
    invoke-virtual {p0}, Lkc;->v()V

    .line 141
    invoke-virtual {p0}, Lkc;->x()V

    .line 144
    invoke-static {p0}, Ljf0;->i(Landroid/content/Context;)Ljf0;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0, p0}, Ljf0;->o(Landroid/app/Activity;)V

    .line 151
    const-string v0, "BaseNativeActivity initView end"

    .line 153
    invoke-static {v0}, Lcom/autonavi/amapauto/Hook;->a(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 159
    move-result-object v0

    .line 160
    const-string v1, "Activity init End"

    .line 162
    invoke-virtual {v0, v1, v3}, Lcom/autonavi/amapauto/framework/AutoLoader;->t(Ljava/lang/String;Z)V

    .line 165
    invoke-static {p1}, Lcom/autonavi/amapauto/Debug/AutoSysTrace;->EndSection(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public v()V
    .registers 9

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->wndReuse:Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 3
    invoke-virtual {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;->f()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_c

    .line 9
    invoke-virtual {p0}, Lkc;->w()V

    .line 12
    return-void

    .line 13
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7f090004

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    new-array v2, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x0

    .line 32
    aput-object v3, v2, v4

    .line 34
    const-string v3, "Activity"

    .line 36
    const-string v5, "customDensity:{?}"

    .line 38
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    if-lez v0, :cond_39

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 50
    move-result-object v2

    .line 51
    int-to-float v0, v0

    .line 52
    const/high16 v5, 0x3f800000  # 1.0f

    .line 54
    mul-float v0, v0, v5

    .line 56
    iput v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 58
    :cond_39
    const v0, 0x7f0b0066

    .line 61
    :try_start_3c
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3f} :catch_133

    .line 64
    invoke-static {}, Lse;->c()Lse;

    .line 67
    move-result-object v0

    .line 68
    const v2, 0xea61

    .line 71
    invoke-virtual {v0, v2}, Lse;->getOptionalValue(I)Leq$a;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_6a

    .line 81
    const v2, 0x1020002

    .line 84
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v2

    .line 88
    const-string v5, "setContentView addOnPreDrawListener start"

    .line 90
    new-array v6, v4, [Ljava/lang/Object;

    .line 92
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 98
    move-result-object v3

    .line 99
    new-instance v5, Lkc$c;

    .line 101
    invoke-direct {v5, p0, v2}, Lkc$c;-><init>(Lkc;Landroid/view/View;)V

    .line 104
    invoke-virtual {v3, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 107
    :cond_6a
    const v2, 0x7f0800c8

    .line 110
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object v2

    .line 114
    iput-object v2, p0, Lkc;->b:Landroid/view/View;

    .line 116
    sget-boolean v3, Lyg0;->a:Z

    .line 118
    if-eqz v3, :cond_7c

    .line 120
    const/16 v3, 0x8

    .line 122
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_7c
    const v2, 0x7f080128

    .line 128
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/autonavi/amapauto/MapSurfaceView;

    .line 134
    iput-object v2, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 136
    iget-object v3, p0, Lkc;->b:Landroid/view/View;

    .line 138
    const-string v5, "BaseNativeActivity"

    .line 140
    if-nez v3, :cond_9a

    .line 142
    const-string v0, "mCover is Null exit"

    .line 144
    new-array v1, v4, [Ljava/lang/Object;

    .line 146
    invoke-static {v5, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const/16 v0, 0x68

    .line 151
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 154
    return-void

    .line 155
    :cond_9a
    if-eqz v2, :cond_a5

    .line 157
    invoke-static {}, Lrv;->H()Lrv;

    .line 160
    move-result-object v2

    .line 161
    iget-object v3, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 163
    invoke-virtual {v2, v3}, Lrv;->q(Landroid/view/View;)V

    .line 166
    :cond_a5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const-string v3, "mCover init TaskId :"

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 179
    move-result v3

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    new-array v3, v4, [Ljava/lang/Object;

    .line 189
    invoke-static {v5, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    .line 199
    move-result v2

    .line 200
    const/high16 v3, 0x400000

    .line 202
    and-int/2addr v2, v3

    .line 203
    if-eqz v2, :cond_d0

    .line 205
    invoke-virtual {p0}, Lkc;->t()V

    .line 208
    goto :goto_e0

    .line 209
    :cond_d0
    const-string v2, "postDelayed Cover"

    .line 211
    new-array v3, v4, [Ljava/lang/Object;

    .line 213
    invoke-static {v5, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Lkc;->b:Landroid/view/View;

    .line 218
    iget-object v3, p0, Lkc;->j:Lkc$h;

    .line 220
    const-wide/16 v6, 0x1f40

    .line 222
    invoke-virtual {v2, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    :goto_e0
    const v2, 0x7f0801f2

    .line 228
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Landroid/view/SurfaceView;

    .line 234
    iput-object v2, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 236
    if-nez v2, :cond_fa

    .line 238
    const-string v0, "ui surface is Null exit"

    .line 240
    new-array v1, v4, [Ljava/lang/Object;

    .line 242
    invoke-static {v5, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const/16 v0, 0x69

    .line 247
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 250
    return-void

    .line 251
    :cond_fa
    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 254
    iget-object v2, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 256
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 259
    move-result-object v2

    .line 260
    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 263
    iget-object v1, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 265
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 268
    move-result-object v1

    .line 269
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 272
    new-instance v1, Lkc$j;

    .line 274
    const/4 v2, 0x0

    .line 275
    invoke-direct {v1, p0, v2}, Lkc$j;-><init>(Lkc;Lkc$a;)V

    .line 278
    iput-object v1, p0, Lkc;->m:Lkc$j;

    .line 280
    iget-object v2, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 282
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 285
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 288
    move-result v0

    .line 289
    if-eqz v0, :cond_132

    .line 291
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 298
    move-result-object v0

    .line 299
    new-instance v1, Lkc$d;

    .line 301
    invoke-direct {v1, p0}, Lkc$d;-><init>(Lkc;)V

    .line 304
    invoke-static {v0, v1}, Lzk0;->F(Landroid/view/View;Lx40;)V

    .line 307
    :cond_132
    return-void

    .line 308
    :catch_133
    move-exception v0

    .line 309
    new-array v1, v1, [Ljava/lang/Object;

    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 314
    move-result-object v0

    .line 315
    aput-object v0, v1, v4

    .line 317
    const-string v0, "setContentView:{?}"

    .line 319
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const/16 v0, 0x67

    .line 324
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 327
    return-void
.end method

.method public w()V
    .registers 3

    .line 1
    const v0, 0x7f0b0067

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    const v0, 0x7f0801f2

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/SurfaceView;

    .line 16
    iput-object v0, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 22
    iget-object v0, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 24
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 31
    iget-object v0, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 33
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 40
    new-instance v0, Lkc$j;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {v0, p0, v1}, Lkc$j;-><init>(Lkc;Lkc$a;)V

    .line 46
    iput-object v0, p0, Lkc;->m:Lkc$j;

    .line 48
    iget-object v1, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    return-void
.end method

.method public x()V
    .registers 5

    .line 1
    invoke-static {}, Lzi;->a()Lzi$a;

    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lzi$a;->b:I

    .line 7
    iput v0, p0, Lkc;->f:I

    .line 9
    invoke-static {}, Lzi;->a()Lzi$a;

    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Lzi$a;->a:I

    .line 15
    iput v0, p0, Lkc;->g:I

    .line 17
    invoke-static {}, Lgn;->b()Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_a4

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    move-result-object v0

    .line 32
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 34
    iget-object v2, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 36
    if-nez v2, :cond_26

    .line 38
    return-void

    .line 39
    :cond_26
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 48
    move-result v3

    .line 49
    if-ne v2, v3, :cond_34

    .line 51
    const/4 v2, 0x1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 v2, 0x0

    .line 54
    :goto_35
    const/4 v3, 0x2

    .line 55
    if-ne v0, v3, :cond_75

    .line 57
    iget-object v0, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    if-eqz v2, :cond_4b

    .line 67
    iget v3, p0, Lkc;->g:I

    .line 69
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 71
    iget v3, p0, Lkc;->f:I

    .line 73
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    iget v3, p0, Lkc;->f:I

    .line 78
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 80
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 82
    :goto_51
    iget-object v3, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 84
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v3, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    if-eqz v2, :cond_69

    .line 97
    iget v2, p0, Lkc;->g:I

    .line 99
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 101
    iget v2, p0, Lkc;->f:I

    .line 103
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 105
    goto :goto_6f

    .line 106
    :cond_69
    iget v0, p0, Lkc;->f:I

    .line 108
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 110
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    :goto_6f
    iget-object v0, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    goto :goto_a4

    .line 118
    :cond_75
    iget-object v0, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    iget v2, p0, Lkc;->g:I

    .line 128
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 130
    iget v2, p0, Lkc;->f:I

    .line 132
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 134
    iget-object v2, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 136
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    iget v2, p0, Lkc;->g:I

    .line 149
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 151
    iget v2, p0, Lkc;->f:I

    .line 153
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 155
    iget-object v2, p0, Lkc;->k:Landroid/view/SurfaceView;

    .line 157
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p0, Lkc;->c:Lcom/autonavi/amapauto/MapSurfaceView;

    .line 162
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_a4
    :goto_a4
    invoke-static {p0}, Lxj;->a(Landroid/app/Activity;)I

    .line 168
    move-result v0

    .line 169
    invoke-static {}, Lcom/autonavi/amapauto/framework/AutoLoader;->a()Lcom/autonavi/amapauto/framework/AutoLoader;

    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2, v1, v0}, Lcom/autonavi/amapauto/framework/AutoLoader;->v(II)V

    .line 176
    return-void
.end method

.method public final y()V
    .registers 3

    .line 1
    iget-object v0, p0, Lkc;->r:Leb;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Leb;

    .line 8
    const-string v1, "UI_Monitor"

    .line 10
    invoke-direct {v0, v1}, Leb;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object v0, p0, Lkc;->r:Leb;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    new-instance v0, Lkc$b;

    .line 20
    iget-object v1, p0, Lkc;->r:Leb;

    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1}, Lkc$b;-><init>(Lkc;Landroid/os/Looper;)V

    .line 29
    iput-object v0, p0, Lkc;->s:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method public z()Z
    .registers 5

    .line 1
    :try_start_0
    const-string v0, "power"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/PowerManager;

    .line 9
    if-eqz v0, :cond_1a

    .line 11
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 14
    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 15
    return v0

    .line 16
    :catch_f
    move-exception v0

    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    const-string v2, "Activity"

    .line 22
    const-string v3, "occur an error~"

    .line 24
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    :cond_1a
    const/4 v0, 0x1

    .line 28
    return v0
.end method
